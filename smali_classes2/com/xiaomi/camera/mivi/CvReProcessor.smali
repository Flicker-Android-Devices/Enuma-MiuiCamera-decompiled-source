.class public Lcom/xiaomi/camera/mivi/CvReProcessor;
.super Lcom/xiaomi/camera/mivi/IReProcessor;
.source "CvReProcessor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CvReProcessor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/mivi/IReProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public submit(Lcom/xiaomi/camera/mivi/bean/ResultImageData;Lcom/xiaomi/camera/mivi/IReProcessor$Callback;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;

    invoke-direct {v0, p1}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;-><init>(Lcom/xiaomi/camera/mivi/bean/ResultImageData;)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getImages()[Landroid/media/Image;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/camera/mivi/bean/ResultImageData;->getImages()[Landroid/media/Image;

    move-result-object v2

    aget-object v2, v2, v1

    .line 4
    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x11

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "submit format is not yuv, is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CvReProcessor"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {v2}, Lcom/android/camera/Util;->getFirstPlane(Landroid/media/Image;)[B

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v4

    invoke-virtual {v0, v3, v4, v1}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;->addOutputData([BII)V

    goto :goto_2

    .line 8
    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/xiaomi/camera/base/ImageUtil;->getBytesFromImage(Landroid/media/Image;)[B

    move-result-object v3

    .line 9
    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v4

    invoke-virtual {v0, v3, v4, v1}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;->addOutputData([BII)V

    .line 10
    :goto_2
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 11
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0}, Lcom/xiaomi/camera/mivi/bean/ResultOutputData;->isDataReady()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-interface {p2, v0}, Lcom/xiaomi/camera/mivi/IReProcessor$Callback;->onSuccess(Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V

    goto :goto_3

    .line 14
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "there are some buffer is not received, resultImageData is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/xiaomi/camera/mivi/IReProcessor$Callback;->onError(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
