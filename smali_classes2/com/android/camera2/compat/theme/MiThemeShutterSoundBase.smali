.class public Lcom/android/camera2/compat/theme/MiThemeShutterSoundBase;
.super Ljava/lang/Object;
.source "MiThemeShutterSoundBase.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/MiThemeShutterSoundIf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAvailableSounds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/customization/ShutterSound;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/android/camera/customization/ShutterSound;

    const v2, 0x7f120320

    const-string v3, "default"

    const v4, 0x7f080983

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/customization/ShutterSound;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/android/camera/customization/ShutterSound;

    const v2, 0x7f12031f

    const-string v3, "art"

    const v4, 0x7f080982

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/customization/ShutterSound;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/android/camera/customization/ShutterSound;

    const v2, 0x7f120322

    const-string v3, "old"

    const v4, 0x7f080986

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/customization/ShutterSound;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/android/camera/customization/ShutterSound;

    const v2, 0x7f120321

    const-string v3, "modern"

    const v4, 0x7f080985

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/customization/ShutterSound;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public loadFromSomewhere(IILandroid/media/SoundPool;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ShutterSound;->getInstance()Lcom/android/camera/customization/ShutterSound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/customization/ShutterSound;->getsAvailableSounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/customization/ShutterSound;

    .line 2
    invoke-virtual {p1, p2}, Lcom/android/camera/customization/ShutterSound;->soundPath(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/android/camera/customization/ShutterSound;->loadFromAsset(Ljava/lang/String;Landroid/media/SoundPool;)I

    move-result p1

    return p1
.end method
