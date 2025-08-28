.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Ooooo00/o00oO0o/OooOo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/top/FragmentTopConfig;

.field private final synthetic OooO0O0:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o00oO0o/OooOo0;->OooO00o:Lcom/android/camera/fragment/top/FragmentTopConfig;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o00oO0o/OooOo0;->OooO0O0:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o00oO0o/OooOo0;->OooO00o:Lcom/android/camera/fragment/top/FragmentTopConfig;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o00oO0o/OooOo0;->OooO0O0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->OooO0O0(Landroid/widget/ImageView;)V

    return-void
.end method
