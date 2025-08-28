.class public final Lcom/xiaomi/renderengine/renderer/RendererManager;
.super Ljava/lang/Object;
.source "RendererManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RendererFactor"

.field public static sAllGlobalRenderer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaomi/renderengine/renderer/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field public static sAllLocalRenderer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaomi/renderengine/renderer/Renderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/renderengine/renderer/RendererManager;->sAllLocalRenderer:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/renderengine/renderer/RendererManager;->sAllGlobalRenderer:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearAllRenderer()V
    .locals 3

    const-class v0, Lcom/xiaomi/renderengine/renderer/RendererManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/xiaomi/renderengine/renderer/RendererManager;->sAllLocalRenderer:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2
    sget-object v1, Lcom/xiaomi/renderengine/renderer/RendererManager;->sAllGlobalRenderer:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-string v1, "RendererFactor"

    const-string v2, "clearAllRenderer"

    .line 3
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getGlobalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;
    .locals 5

    const-class v0, Lcom/xiaomi/renderengine/renderer/RendererManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/xiaomi/renderengine/renderer/RendererManager;->sAllGlobalRenderer:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/renderengine/renderer/Renderer;

    if-nez v1, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v2, "RendererFactor"

    goto :goto_0

    :pswitch_0
    const-string v2, "RendererFactor"

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGlobalRenderer the renderer not implemented type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3
    :pswitch_1
    new-instance v1, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    invoke-direct {v1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;-><init>()V

    goto :goto_1

    .line 4
    :pswitch_2
    new-instance v1, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    invoke-direct {v1}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;-><init>()V

    goto :goto_1

    .line 5
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGlobalRenderer unsupported renderer type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v1, :cond_0

    .line 6
    iput p0, v1, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    .line 7
    sget-object v2, Lcom/xiaomi/renderengine/renderer/RendererManager;->sAllGlobalRenderer:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;
    .locals 5

    const-class v0, Lcom/xiaomi/renderengine/renderer/RendererManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/xiaomi/renderengine/renderer/RendererManager;->sAllLocalRenderer:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/renderengine/renderer/Renderer;

    if-nez v1, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v2, "RendererFactor"

    goto :goto_0

    .line 2
    :pswitch_0
    new-instance v1, Lcom/xiaomi/renderengine/renderer/TiltShiftParallelRenderer;

    invoke-direct {v1}, Lcom/xiaomi/renderengine/renderer/TiltShiftParallelRenderer;-><init>()V

    goto :goto_1

    .line 3
    :pswitch_1
    new-instance v1, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;

    invoke-direct {v1}, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;-><init>()V

    goto :goto_1

    .line 4
    :pswitch_2
    new-instance v1, Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    invoke-direct {v1}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;-><init>()V

    goto :goto_1

    .line 5
    :pswitch_3
    new-instance v1, Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;

    invoke-direct {v1}, Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;-><init>()V

    goto :goto_1

    .line 6
    :pswitch_4
    new-instance v1, Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;

    invoke-direct {v1}, Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;-><init>()V

    goto :goto_1

    :pswitch_5
    const-string v2, "RendererFactor"

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocalRenderer the renderer not implemented type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocalRenderer unsupported renderer type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v1, :cond_0

    .line 9
    iput p0, v1, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    .line 10
    sget-object v2, Lcom/xiaomi/renderengine/renderer/RendererManager;->sAllLocalRenderer:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
