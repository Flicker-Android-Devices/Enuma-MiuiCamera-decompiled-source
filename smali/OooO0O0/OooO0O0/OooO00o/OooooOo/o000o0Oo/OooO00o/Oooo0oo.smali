.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/Oooo0oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/Oooo0oo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/Oooo0oo;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/Oooo0oo;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/Oooo0oo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/Oooo0oo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    check-cast p2, Ljava/lang/Long;

    invoke-static {p1, p2}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->OooO00o(Lcom/android/camera/data/data/ComponentDataItem;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
