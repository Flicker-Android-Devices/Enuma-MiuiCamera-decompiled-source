.class public Lcom/android/camera/module/Camera2Module$ModuleSpecialProtocolImpl;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Camera2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModuleSpecialProtocolImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$ModuleSpecialProtocolImpl;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isStartCountCapture()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$ModuleSpecialProtocolImpl;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    iget-boolean v0, v0, Lcom/android/camera/timerburst/TimerBurstManager;->mIsStartCount:Z

    return v0
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc3

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public showQRCodeResult()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$ModuleSpecialProtocolImpl;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/PreviewDecodeManager;->getScanResult()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$ModuleSpecialProtocolImpl;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 5
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->dismissKeyguard()V

    .line 6
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.xiaomi.scanner.receiver.senderbarcodescanner"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    .line 7
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "com.xiaomi.scanner"

    .line 8
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.xiaomi.scanner.module.code.app.BarCodeScannerReceiver"

    invoke-direct {v4, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v3, "result"

    .line 10
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x3

    .line 12
    invoke-virtual {v1, v0}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    .line 13
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/PreviewDecodeManager;->resetScanResult()V

    return-void

    .line 14
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "showQRCodeResult: get a null result!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc3

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
