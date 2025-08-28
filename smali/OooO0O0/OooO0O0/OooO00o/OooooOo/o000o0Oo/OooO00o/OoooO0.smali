.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OoooO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OoooO0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OoooO0;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OoooO0;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OoooO0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OoooO0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isBlockSnap()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
