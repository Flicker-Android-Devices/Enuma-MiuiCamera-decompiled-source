.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooOOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/fragment/dialog/BaseDialogFragment$DismissCallback;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/Camera;

.field private final synthetic OooO0O0:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooOOO0;->OooO00o:Lcom/android/camera/Camera;

    iput p2, p0, LOooO0O0/OooO0O0/OooO00o/OooOOO0;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooOOO0;->OooO00o:Lcom/android/camera/Camera;

    iget v1, p0, LOooO0O0/OooO0O0/OooO00o/OooOOO0;->OooO0O0:I

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->OooO0O0(I)V

    return-void
.end method
