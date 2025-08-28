.class public Lcom/xiaomi/renderengine/renderer/ColorRenderer;
.super Lcom/xiaomi/renderengine/renderer/Renderer;
.source "ColorRenderer.java"


# static fields
.field public static final BYTE_COLOR_TO_FLOAT:F = 0.003921569f

.field public static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float; \nuniform sampler2D sTexture; \nuniform vec4 uPaintColor; \nuniform float uAlpha; \nvarying vec2 vTexCoord; \nvoid main() { \n    vec3 color = texture2D(sTexture, vTexCoord).rgb; \n    color = mix(color, uPaintColor.rgb, uPaintColor.a);\n    gl_FragColor = vec4(color, 1.0);  \n}"

.field public static final TAG:Ljava/lang/String; = "ColorRenderer"

.field public static final TEXTURES:[F

.field public static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix; \nuniform float u_PointSize; \nattribute vec3 aPosition; \nattribute vec2 aTexCoord; \nvarying vec2 vTexCoord; \nvoid main() \n{ \ngl_Position = uMVPMatrix * vec4(aPosition,1); \nvTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st; \ngl_PointSize = u_PointSize; \n} \n"

.field public static final VERTICES:[F


# instance fields
.field public mAttributePositionH:I

.field public mAttributeTexCoorH:I

.field public mColor:I

.field public mProgram:I

.field public mTexCoorBuffer:Ljava/nio/FloatBuffer;

.field public mUniformAlphaH:I

.field public mUniformMVPMatrixH:I

.field public mUniformPaintColorH:I

.field public mUniformSTMatrixH:I

.field public mUniformTextureH:I

.field public mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->VERTICES:[F

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->TEXTURES:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/Renderer;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mProgram:I

    .line 3
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mColor:I

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    return-void
.end method


# virtual methods
.method public initAttributePointer()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->VERTICES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->TEXTURES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    .line 5
    :cond_1
    iget v1, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mAttributePositionH:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6
    iget v7, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mAttributeTexCoorH:I

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    iget-object v12, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method public initShader()V
    .locals 3

    const-string v0, "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix; \nuniform float u_PointSize; \nattribute vec3 aPosition; \nattribute vec2 aTexCoord; \nvarying vec2 vTexCoord; \nvoid main() \n{ \ngl_Position = uMVPMatrix * vec4(aPosition,1); \nvTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st; \ngl_PointSize = u_PointSize; \n} \n"

    const-string v1, "precision mediump float; \nuniform sampler2D sTexture; \nuniform vec4 uPaintColor; \nuniform float uAlpha; \nvarying vec2 vTexCoord; \nvoid main() { \n    vec3 color = texture2D(sTexture, vTexCoord).rgb; \n    color = mix(color, uPaintColor.rgb, uPaintColor.a);\n    gl_FragColor = vec4(color, 1.0);  \n}"

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mProgram:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 3
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mUniformMVPMatrixH:I

    .line 4
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mProgram:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mUniformSTMatrixH:I

    .line 5
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mProgram:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mUniformTextureH:I

    .line 6
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mAttributePositionH:I

    .line 7
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mProgram:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mAttributeTexCoorH:I

    .line 8
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mProgram:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mUniformAlphaH:I

    .line 9
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mProgram:I

    const-string v1, "uPaintColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mUniformPaintColorH:I

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": mProgram = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initShaderValue(ILcom/xiaomi/renderengine/GLState;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mAttributePositionH:I

    iget-object v5, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2
    iget v6, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mAttributeTexCoorH:I

    iget-object v11, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 3
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 4
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 5
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mUniformMVPMatrixH:I

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/GLState;->getFinalMatrix()[F

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 6
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mUniformSTMatrixH:I

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/GLState;->getTexMatrix()[F

    move-result-object v1

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x84c0

    .line 7
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 8
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 9
    iget p1, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mUniformTextureH:I

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 10
    iget p1, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mUniformAlphaH:I

    invoke-virtual {p2}, Lcom/xiaomi/renderengine/GLState;->getAlpha()F

    move-result p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 11
    iget p1, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mUniformPaintColorH:I

    iget p2, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mColor:I

    .line 12
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result p2

    int-to-float p2, p2

    const v0, 0x3b808081

    mul-float/2addr p2, v0

    iget v1, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mColor:I

    .line 13
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mColor:I

    .line 14
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mColor:I

    .line 15
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    .line 16
    invoke-static {p1, p2, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void
.end method

.method public onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->initShader()V

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->initAttributePointer()V

    return-void
.end method

.method public onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mProgram:I

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mProgram:I

    :cond_0
    return-void
.end method

.method public onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/GLState;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/GLState;->pushState()V

    .line 2
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/GLState;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/GLState;->identityAllM()V

    .line 3
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v0

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 4
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 6
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 7
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 8
    iget v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    iget v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 9
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/GLState;

    iget v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    int-to-float v2, v2

    iget v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v5, v4}, Lcom/xiaomi/renderengine/GLState;->ortho(FFFF)V

    .line 10
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/GLState;

    iget v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    int-to-float v2, v2

    iget v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v4, v5}, Lcom/xiaomi/renderengine/GLState;->scale(FFF)V

    .line 11
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbIn:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result v0

    iget-object v2, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/GLState;

    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->initShaderValue(ILcom/xiaomi/renderengine/GLState;)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 12
    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 13
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 14
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 15
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 16
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/GLState;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/GLState;->popState()V

    .line 17
    iget-object p1, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFbOut:Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    invoke-virtual {p1}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getTextureId()I

    move-result p1

    return p1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid shader program. shaderProgram:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mProgram:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;->mColor:I

    return-void
.end method
