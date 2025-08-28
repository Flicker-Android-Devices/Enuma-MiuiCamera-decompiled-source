.class public Lcom/android/camera/fragment/beauty/BeautySettingManager;
.super Ljava/lang/Object;
.source "BeautySettingManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BeautySettingManager"


# instance fields
.field public mBeautySettingBusinessArray:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/BeautySettingManager;->mBeautySettingBusinessArray:Ljava/util/HashMap;

    return-void
.end method

.method private getWrappedBeautyType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0o0()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKeyForBeautyMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateBeautySettingBusiness(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;Ljava/util/Map;Z)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/camera/data/data/runing/TypeElementsBeauty;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;",
            ">;Z)",
            "Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 1
    invoke-static {p1}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKeyForBeautyMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, p1

    .line 2
    :goto_0
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    return-object p1

    :cond_1
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x38

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_4

    const/16 v2, 0x621

    if-eq v1, v2, :cond_3

    const/16 v2, 0x622

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "13"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v3

    goto :goto_1

    :cond_3
    const-string v1, "12"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v4

    goto :goto_1

    :cond_4
    const-string v1, "8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :cond_5
    :goto_1
    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    .line 5
    new-instance v0, Lcom/android/camera/fragment/beauty/BeautySettingBusiness;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/fragment/beauty/BeautySettingBusiness;-><init>(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;)V

    goto :goto_2

    .line 6
    :cond_6
    new-instance v0, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/fragment/beauty/Makeup2SettingBusiness;-><init>(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;)V

    goto :goto_2

    .line 7
    :cond_7
    new-instance v0, Lcom/android/camera/fragment/beauty/MakeupSettingBusiness;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/fragment/beauty/MakeupSettingBusiness;-><init>(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;)V

    goto :goto_2

    .line 8
    :cond_8
    new-instance v0, Lcom/android/camera/fragment/beauty/VideoBokehSettingBusiness;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/fragment/beauty/VideoBokehSettingBusiness;-><init>(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;)V

    .line 9
    :goto_2
    invoke-interface {p3, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public constructAndGetSetting(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;Z)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautySettingManager;->mBeautySettingBusinessArray:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/camera/fragment/beauty/BeautySettingManager;->updateBeautySettingBusiness(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;Ljava/util/Map;Z)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->updateExtraTable()V

    return-object p1
.end method
