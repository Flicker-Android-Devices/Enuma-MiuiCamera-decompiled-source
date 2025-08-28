.class public Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;
.super Lcom/android/camera/panorama/AttachRunnable;
.source "Panorama3Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Panorama3Module$PanoramaPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewAttach"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;
    }
.end annotation


# instance fields
.field public mInputSave:Lcom/android/camera/panorama/InputSave;

.field public final mPostAttachRunnable:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;

.field public final synthetic this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    invoke-direct {p0}, Lcom/android/camera/panorama/AttachRunnable;-><init>()V

    .line 2
    new-instance p1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;-><init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;Lcom/android/camera/module/Panorama3Module$1;)V

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->mPostAttachRunnable:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;

    .line 3
    new-instance p1, Lcom/android/camera/panorama/InputSave;

    invoke-direct {p1}, Lcom/android/camera/panorama/InputSave;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->mInputSave:Lcom/android/camera/panorama/InputSave;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;Lcom/android/camera/module/Panorama3Module$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;-><init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)V

    return-void
.end method

.method private checkAttachEnd([D)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->access$5800(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)Lcom/android/camera/panorama/PositionDetector;

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/camera/panorama/PositionDetector;->detect(DD)I

    move-result p1

    .line 2
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAttachEnd detectResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v3, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->access$5900(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;->setDetectResult(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object p1, p1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->access$5900(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string/jumbo p1, "stop_capture_complete"

    return-object p1

    :cond_1
    const-string/jumbo p1, "unknown"

    return-object p1

    :cond_2
    const-string/jumbo p1, "stop_capture_reverse"

    return-object p1

    :cond_3
    const-string/jumbo p1, "stop_capture_out_of_range"

    return-object p1
.end method

.method private updatePreviewImage()V
    .locals 20

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$4500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2
    :try_start_0
    iget-object v0, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$800(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v0

    iget-object v3, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v3, v3, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$4600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->updatePreviewImage(Landroid/graphics/Bitmap;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updatePreviewImage error ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v2

    return-void

    .line 5
    :cond_0
    iget-object v0, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$4600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mPreviewImage is null when updatePreviewImage"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    monitor-exit v2

    return-void

    .line 8
    :cond_1
    iget-object v0, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$4700(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 9
    iget-object v3, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v3, v3, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$4700(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 10
    iget-object v4, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$4600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v5, v5, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$4600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/16 v8, 0xb4

    const/4 v9, 0x6

    const/16 v10, 0x10e

    const/4 v11, 0x5

    const/4 v12, 0x0

    if-le v4, v5, :cond_2

    if-gt v0, v3, :cond_3

    :cond_2
    iget-object v4, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 11
    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$4600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v5, v5, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$4600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_6

    if-ge v0, v3, :cond_6

    .line 12
    :cond_3
    iget-object v4, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$3300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-eq v4, v11, :cond_4

    iget-object v4, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 13
    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$3300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-eq v4, v9, :cond_4

    iget-object v4, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 14
    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$3300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-eq v4, v7, :cond_4

    iget-object v4, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 15
    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$3300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-ne v4, v6, :cond_5

    :cond_4
    iget-object v4, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 16
    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$3300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    if-ne v4, v10, :cond_5

    goto :goto_0

    :cond_5
    move v8, v12

    goto :goto_0

    .line 17
    :cond_6
    iget-object v4, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$3300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-eq v4, v11, :cond_7

    iget-object v4, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 18
    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$3300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-eq v4, v9, :cond_7

    iget-object v4, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 19
    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$3300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-eq v4, v7, :cond_7

    iget-object v4, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 20
    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$3300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-ne v4, v6, :cond_8

    :cond_7
    iget-object v4, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 21
    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$3300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    if-ne v4, v8, :cond_8

    move v8, v10

    goto :goto_0

    :cond_8
    const/16 v8, 0x5a

    .line 22
    :goto_0
    iget-object v4, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$4600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v8, :cond_9

    .line 23
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v5, v8

    .line 24
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 25
    iget-object v5, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v5, v5, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$4600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v5, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v5, v5, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 26
    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$4600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    iget-object v5, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v5, v5, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$4600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    const/16 v19, 0x1

    move-object/from16 v18, v4

    .line 27
    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 28
    :cond_9
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v12, v12, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    if-le v0, v3, :cond_a

    .line 29
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 30
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    int-to-float v3, v6

    div-float/2addr v3, v0

    float-to-int v0, v3

    sub-int v3, v0, v7

    .line 31
    div-int/lit8 v3, v3, 0x2

    .line 32
    new-instance v7, Landroid/graphics/Rect;

    add-int/2addr v0, v3

    invoke-direct {v7, v12, v3, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    .line 33
    :cond_a
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    int-to-float v3, v6

    mul-float/2addr v3, v0

    float-to-int v0, v3

    .line 34
    new-instance v7, Landroid/graphics/Rect;

    add-int/2addr v0, v12

    invoke-direct {v7, v12, v12, v0, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 35
    :goto_1
    iget-object v0, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$4900(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v3, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v3, v3, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$5000(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v0, v4, v7, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 36
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePreviewImage src "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", dst = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    const/4 v1, 0x1

    const-string/jumbo v2, "stop_capture_un_expect"

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/Panorama3Module;->access$6000(Lcom/android/camera/module/Panorama3Module;ZLjava/lang/String;)V

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/android/camera/module/Panorama3Module;->access$6000(Lcom/android/camera/module/Panorama3Module;ZLjava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 19

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PreviewAttach.run start"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v15, v0, [D

    .line 2
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$2900(Lcom/android/camera/module/Panorama3Module;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/panorama/CaptureImage;

    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$3000()Lcom/android/camera/panorama/CaptureImage;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_4

    .line 3
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/android/camera/panorama/AttachRunnable;->setImage(Lcom/android/camera/panorama/CaptureImage;)V

    .line 4
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$5300()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->mInputSave:Lcom/android/camera/panorama/InputSave;

    iget-object v4, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v4, v4, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v4}, Lcom/android/camera/module/Panorama3Module;->access$1900(Lcom/android/camera/module/Panorama3Module;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/camera/panorama/InputSave;->onSaveImage(Lcom/android/camera/panorama/CaptureImage;Ljava/lang/String;)V

    .line 6
    :cond_0
    sget-object v16, Lcom/android/camera/module/Panorama3Module;->mEngineLock:Ljava/lang/Object;

    monitor-enter v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    iget-object v3, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v3, v3, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$1500(Lcom/android/camera/module/Panorama3Module;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PreviewAttach exit. (request stop)"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/panorama/AttachRunnable;->closeSrc()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    .line 11
    :cond_1
    :try_start_4
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PreviewAttach attach start"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v3, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v3, v3, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3, v2}, Lcom/android/camera/module/Panorama3Module;->access$3100(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/panorama/CaptureImage;)V

    .line 13
    iget-object v2, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$800(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v2

    iget-object v3, v1, Lcom/android/camera/panorama/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/16 v17, 0x0

    aget-object v3, v3, v17

    iget-object v4, v1, Lcom/android/camera/panorama/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v14, 0x1

    aget-object v4, v4, v14

    iget-object v5, v1, Lcom/android/camera/panorama/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v0

    iget-object v6, v1, Lcom/android/camera/panorama/AttachRunnable;->rowStride:[I

    aget v6, v6, v17

    iget-object v7, v1, Lcom/android/camera/panorama/AttachRunnable;->rowStride:[I

    aget v7, v7, v14

    iget-object v8, v1, Lcom/android/camera/panorama/AttachRunnable;->rowStride:[I

    aget v8, v8, v0

    iget-object v9, v1, Lcom/android/camera/panorama/AttachRunnable;->pixelStride:[I

    aget v9, v9, v17

    iget-object v10, v1, Lcom/android/camera/panorama/AttachRunnable;->pixelStride:[I

    aget v10, v10, v14

    iget-object v11, v1, Lcom/android/camera/panorama/AttachRunnable;->pixelStride:[I

    aget v11, v11, v0

    iget-object v12, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v12, v12, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 14
    invoke-static {v12}, Lcom/android/camera/module/Panorama3Module;->access$3200(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/SensorInfoManager;

    move-result-object v12

    iget-object v13, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v13, v13, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {v13}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v18

    move-object v13, v15

    move v0, v14

    move-object/from16 v14, v18

    .line 15
    invoke-virtual/range {v2 .. v14}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->attach(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIILcom/android/camera/panorama/SensorInfoManager;[DLandroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "PreviewAttach attach error, resultCode: 0x%08X"

    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v17

    .line 18
    invoke-static {v4, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 20
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/panorama/AttachRunnable;->closeSrc()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 21
    :cond_2
    :try_start_6
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PreviewAttach attach end"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v2, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2, v0}, Lcom/android/camera/module/Panorama3Module;->access$5402(Lcom/android/camera/module/Panorama3Module;Z)Z

    .line 23
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->updatePreviewImage()V

    .line 24
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCenter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v15, v17

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v15, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 26
    :try_start_7
    iget-object v0, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    iget-object v2, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->mPostAttachRunnable:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$PostAttachRunnable;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 27
    invoke-direct {v1, v15}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->checkAttachEnd([D)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 28
    iget-object v2, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v2, v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    new-instance v3, LOooO0O0/OooO0O0/OooO00o/OooooOo/o0000OOo;

    invoke-direct {v3, v1, v0}, LOooO0O0/OooO0O0/OooO00o/OooooOo/o0000OOo;-><init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 29
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PreviewAttach exit. (attach end)"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 30
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/panorama/AttachRunnable;->closeSrc()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/panorama/AttachRunnable;->closeSrc()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    const/4 v0, 0x2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 31
    :try_start_9
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 32
    :goto_1
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/panorama/AttachRunnable;->closeSrc()V

    .line 33
    throw v0
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    move-exception v0

    .line 34
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PreviewAttach interrupted"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :cond_4
    :goto_2
    iget-object v0, v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OooooOo/o0000OOO;

    invoke-direct {v2, v1}, LOooO0O0/OooO0O0/OooO00o/OooooOo/o0000OOO;-><init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 36
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PreviewAttach exit. (unexpect)"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
