.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/o000OoO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOo/o000OoO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000OoO;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000OoO;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000OoO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOo/o000OoO;

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

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-static {p1}, Lcom/android/camera/module/VideoModule;->OooO0oo(Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
