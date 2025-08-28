.class public Lcom/xiaomi/renderengine/renderer/PreviewRenderer;
.super Lcom/xiaomi/renderengine/renderer/Renderer;
.source "PreviewRenderer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PreviewRenderer"


# instance fields
.field public mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

.field public volatile mHasSurface:Z

.field public mPreviewArea:Landroid/graphics/Rect;

.field public mPreviewSurface:Landroid/view/Surface;

.field public mSurfaceHeight:I

.field public volatile mSurfaceUpdated:Z

.field public mSurfaceWidth:I

.field public mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/Renderer;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewArea:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mHasSurface:Z

    const/16 v0, 0x64

    .line 4
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    const/16 v0, 0x65

    .line 5
    invoke-static {v0}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getGlobalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    return-void
.end method

.method private getWindowSurface()Lcom/xiaomi/renderengine/gl/EglWindowSurface;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mHasSurface:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceUpdated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWindowSurface start, updated="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceUpdated:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " surface="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "PreviewRenderer"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceUpdated:Z

    .line 6
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->release()Z

    .line 8
    :cond_1
    new-instance v0, Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    iget-object v5, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v5}, Lcom/xiaomi/renderengine/RenderEngine;->getEGLCore()Lcom/xiaomi/renderengine/gl/EglCore;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {v0, v5, v6, v1}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;-><init>(Lcom/xiaomi/renderengine/gl/EglCore;Landroid/view/Surface;[I)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWindowSurface end, cost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    return-object v0
.end method


# virtual methods
.method public addPreviewSurface(Landroid/view/Surface;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceHeight:I

    if-eq v0, p3, :cond_1

    .line 2
    :cond_0
    iput p2, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceWidth:I

    .line 3
    iput p3, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceHeight:I

    .line 4
    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;

    .line 5
    iput-boolean v1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceUpdated:Z

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setPreviewSurface surface="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PreviewRenderer"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    iput-boolean v1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mHasSurface:Z

    return-void
.end method

.method public getAnimationResult(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->getAnimationResult(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mHasSurface:Z

    .line 4
    iget-object p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->release()Z

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    :cond_0
    return-void
.end method

.method public onExternalRender(Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->getWindowSurface()Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->makeCurrent()Z

    .line 3
    invoke-interface {p1}, Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;->onDrawFrame()V

    .line 4
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->swapBuffers()Z

    :cond_0
    return-void
.end method

.method public onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->getWindowSurface()Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result v1

    .line 3
    iget v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mAnimType:I

    if-eqz v2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    invoke-virtual {v1, p1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    move-result v1

    :cond_0
    if-lez v1, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->makeCurrent()Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 6
    invoke-static {v3, v3, v3, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v2, 0x4000

    .line 7
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 8
    iget-object v2, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object v2, v2, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgram2D:Lcom/xiaomi/renderengine/program/TextureProgram;

    const/4 v4, 0x0

    iget v5, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceWidth:I

    iget v6, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mSurfaceHeight:I

    iget-object v7, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mTexTrans:[F

    iget-object v8, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewArea:Landroid/graphics/Rect;

    iget-object v9, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/GLState;

    move v3, v1

    invoke-virtual/range {v2 .. v9}, Lcom/xiaomi/renderengine/program/TextureProgram;->draw(IIII[FLandroid/graphics/Rect;Lcom/xiaomi/renderengine/GLState;)I

    .line 9
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->swapBuffers()Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public removePreviewSurface(Landroid/view/Surface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mHasSurface:Z

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewSurface:Landroid/view/Surface;

    return-void
.end method

.method public setPreviewAreaParams(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mPreviewArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setPreviewMirror(Z)V
    .locals 0

    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->mAnimRenderer:Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;->startAnimation()V

    :cond_0
    return-void
.end method
