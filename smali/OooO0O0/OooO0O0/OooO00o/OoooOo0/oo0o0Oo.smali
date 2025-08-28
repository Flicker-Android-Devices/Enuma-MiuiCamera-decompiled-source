.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOo0/oo0o0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOo0/oo0o0Oo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/oo0o0Oo;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OoooOo0/oo0o0Oo;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/oo0o0Oo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOo0/oo0o0Oo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-static {p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->OooO00o(Lcom/android/camera/dualvideo/util/UserSelectData;)I

    move-result p1

    return p1
.end method
