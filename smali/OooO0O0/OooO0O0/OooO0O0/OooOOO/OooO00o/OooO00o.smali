.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/OooOOO/OooO00o/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;


# instance fields
.field private final synthetic OooO00o:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO0O0/OooOOO/OooO00o/OooO00o;->OooO00o:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final create(Landroid/view/ViewGroup;Z)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0O0/OooOOO/OooO00o/OooO00o;->OooO00o:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/camera2/compat/theme/MiThemeOperationTabIf;->OooO00o(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method
