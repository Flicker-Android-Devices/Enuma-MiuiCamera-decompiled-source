.class public Lcom/android/camera/module/interceptor/camera/DxoSceneSimpleASD;
.super Lcom/android/camera/module/interceptor/SimpleASDInterceptor;
.source "DxoSceneSimpleASD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/interceptor/camera/DxoSceneSimpleASD$IDxoAsdSceneDetected;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/SimpleASDInterceptor<",
        "[B",
        "Lcom/android/camera/module/Module;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FunctionDxoAsdSceneDetected"


# instance fields
.field public mCurrentAsdScene:Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

.field public mEmpty:Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

.field public mModuleCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/interceptor/camera/DxoSceneSimpleASD$IDxoAsdSceneDetected;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/interceptor/camera/DxoSceneSimpleASD$IDxoAsdSceneDetected;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/DxoSceneSimpleASD;->mModuleCallback:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    invoke-direct {p1}, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/interceptor/camera/DxoSceneSimpleASD;->mEmpty:Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/DxoSceneSimpleASD;->mModuleCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/DxoSceneSimpleASD;->mModuleCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/interceptor/camera/DxoSceneSimpleASD$IDxoAsdSceneDetected;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;->getTagValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 4
    invoke-static {p2}, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene;->unmarshal([B)Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    move-result-object p2

    .line 5
    iget-object p3, p0, Lcom/android/camera/module/interceptor/camera/DxoSceneSimpleASD;->mCurrentAsdScene:Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    invoke-virtual {p2, p3}, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 6
    :cond_1
    iput-object p2, p0, Lcom/android/camera/module/interceptor/camera/DxoSceneSimpleASD;->mCurrentAsdScene:Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    .line 7
    invoke-interface {p1, p2}, Lcom/android/camera/module/interceptor/camera/DxoSceneSimpleASD$IDxoAsdSceneDetected;->updateDxoAsdScene(Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;)V

    return-void
.end method

.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    return-void
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getNativeTag()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScope()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    const-string v0, "FunctionDxoAsdSceneDetected"

    return-object v0
.end method

.method public getVendorTag()Lcom/android/camera2/vendortag/VendorTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->DXO_ASD_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    return-object v0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isNativeTag()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public moveOnMainThread()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
