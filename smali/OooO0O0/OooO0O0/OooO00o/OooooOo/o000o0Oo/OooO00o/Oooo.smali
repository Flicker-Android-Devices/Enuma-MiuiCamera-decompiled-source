.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/Oooo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# instance fields
.field private final synthetic OooO00o:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/Oooo;->OooO00o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/Oooo;->OooO00o:Ljava/util/List;

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-static {v0, p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->OooO00o(Ljava/util/List;Lcom/android/camera/data/data/ComponentDataItem;)Z

    move-result p1

    return p1
.end method
