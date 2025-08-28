.class public Lcom/android/camera2/MiCamera2MIVIBaseShot$2;
.super Ljava/lang/Object;
.source "MiCamera2MIVIBaseShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2MIVIBaseShot;->handleEarlyImageIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2MIVIBaseShot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$000(Lcom/android/camera2/MiCamera2MIVIBaseShot;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEarlyImageIfNeed: 2 runnable > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiCamera2MIVIBaseShot"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEarlyImageIfNeed: 3 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$100(Lcom/android/camera2/MiCamera2MIVIBaseShot;)Landroid/media/Image;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentParallelTaskData timestamp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageReceived[EARLY] mCurrentParallelTaskData timestamp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " image timestamp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$100(Lcom/android/camera2/MiCamera2MIVIBaseShot;)Landroid/media/Image;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "| image size > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$100(Lcom/android/camera2/MiCamera2MIVIBaseShot;)Landroid/media/Image;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$100(Lcom/android/camera2/MiCamera2MIVIBaseShot;)Landroid/media/Image;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$100(Lcom/android/camera2/MiCamera2MIVIBaseShot;)Landroid/media/Image;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/4 v3, 0x0

    const/16 v4, 0x23

    if-ne v0, v4, :cond_2

    const-string v0, "camera_save_early_pic"

    .line 6
    invoke-static {v0, v3}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v4, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v4}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$100(Lcom/android/camera2/MiCamera2MIVIBaseShot;)Landroid/media/Image;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/xiaomi/camera/base/ImageUtil;->dumpImage(Landroid/media/Image;Ljava/lang/String;)Z

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "handleEarlyImage: return because IsImageCaptureIntent"

    .line 10
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$200(Lcom/android/camera2/MiCamera2MIVIBaseShot;)V

    return-void

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEarlyImage: YUV E , frameNumber = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    iget-object v4, v4, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getFrameNumber()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$100(Lcom/android/camera2/MiCamera2MIVIBaseShot;)Landroid/media/Image;

    move-result-object v0

    const/16 v4, 0x50

    invoke-static {v0, v4}, Lcom/android/camera/ImageHelper;->encodeEarlyImageToJpeg(Landroid/media/Image;I)[B

    move-result-object v0

    .line 14
    iget-object v4, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v4}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$300(Lcom/android/camera2/MiCamera2MIVIBaseShot;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v4

    .line 15
    array-length v5, v0

    invoke-static {v0, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 16
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getShootRotation()F

    move-result v7

    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$300(Lcom/android/camera2/MiCamera2MIVIBaseShot;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isMirror()Z

    move-result v8

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOrientation()I

    move-result v0

    int-to-float v9, v0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$300(Lcom/android/camera2/MiCamera2MIVIBaseShot;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->isSquare()Z

    move-result v10

    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$300(Lcom/android/camera2/MiCamera2MIVIBaseShot;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->isCinematicAspectRatio()Z

    move-result v11

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Lcom/android/camera/Util;->cropBitmap(Landroid/graphics/Bitmap;FZFZZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 17
    sget-object v4, Lcom/android/camera/EncodingQuality;->NORMAL:Lcom/android/camera/EncodingQuality;

    invoke-virtual {v4, v3}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEarlyImage: YUV X , mEarlyImage\'s timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v4}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$100(Lcom/android/camera2/MiCamera2MIVIBaseShot;)Landroid/media/Image;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$200(Lcom/android/camera2/MiCamera2MIVIBaseShot;)V

    .line 20
    iget-object v1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$400(Lcom/android/camera2/MiCamera2MIVIBaseShot;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$500(Lcom/android/camera2/MiCamera2MIVIBaseShot;[BI)V

    goto/16 :goto_1

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$100(Lcom/android/camera2/MiCamera2MIVIBaseShot;)Landroid/media/Image;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/JpegUtil;->getPlanesExtra(Landroid/media/Image;)[Landroid/media/Image$Plane;

    move-result-object v0

    .line 22
    invoke-static {v0, v3}, Lcom/android/camera/JpegUtil;->getJpegData([Landroid/media/Image$Plane;I)[B

    move-result-object v0

    if-nez v0, :cond_3

    .line 23
    iget-object v0, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$100(Lcom/android/camera2/MiCamera2MIVIBaseShot;)Landroid/media/Image;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getFirstPlane(Landroid/media/Image;)[B

    move-result-object v0

    .line 24
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onImageReceived[EARLY] : dataLen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4

    const-string v4, "null"

    goto :goto_0

    :cond_4
    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " resultType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    .line 25
    invoke-static {v4}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$400(Lcom/android/camera2/MiCamera2MIVIBaseShot;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " timeStamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    .line 26
    invoke-static {v4}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$100(Lcom/android/camera2/MiCamera2MIVIBaseShot;)Landroid/media/Image;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " holder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " frameNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    iget-object v4, v4, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 27
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getFrameNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-static {v2, v1, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$200(Lcom/android/camera2/MiCamera2MIVIBaseShot;)V

    .line 30
    iget-object v1, p0, Lcom/android/camera2/MiCamera2MIVIBaseShot$2;->this$0:Lcom/android/camera2/MiCamera2MIVIBaseShot;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$400(Lcom/android/camera2/MiCamera2MIVIBaseShot;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->access$500(Lcom/android/camera2/MiCamera2MIVIBaseShot;[BI)V

    :goto_1
    return-void
.end method
