.class public Lcom/android/camera/module/image/asd/AsdManager$1;
.super Ljava/lang/Object;
.source "AsdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/image/asd/AsdManager;->resetAsdSceneInHdrOrFlashChange(ZLandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/image/asd/AsdManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/image/asd/AsdManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/image/asd/AsdManager$1;->this$0:Lcom/android/camera/module/image/asd/AsdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/asd/AsdManager$1;->this$0:Lcom/android/camera/module/image/asd/AsdManager;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/image/asd/AsdManager;->access$000(Lcom/android/camera/module/image/asd/AsdManager;I)V

    return-void
.end method
