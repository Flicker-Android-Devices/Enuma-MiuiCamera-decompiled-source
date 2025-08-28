.class public final Lcom/android/camera/storage/ParallelSaveRequest;
.super Lcom/android/camera/storage/AbstractSaveRequest;
.source "ParallelSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/ParallelSaveRequest$Builder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mSavePath:Ljava/lang/String;

.field public mTimestamp:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/storage/ParallelSaveRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/storage/ParallelSaveRequest$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/storage/AbstractSaveRequest;-><init>(Lcom/android/camera/storage/AbstractSaveRequest$Builder;)V

    .line 3
    invoke-static {p1}, Lcom/android/camera/storage/ParallelSaveRequest$Builder;->access$000(Lcom/android/camera/storage/ParallelSaveRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/storage/ParallelSaveRequest;->mTimestamp:J

    .line 4
    invoke-static {p1}, Lcom/android/camera/storage/ParallelSaveRequest$Builder;->access$100(Lcom/android/camera/storage/ParallelSaveRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/storage/ParallelSaveRequest$Builder;Lcom/android/camera/storage/ParallelSaveRequest$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ParallelSaveRequest;-><init>(Lcom/android/camera/storage/ParallelSaveRequest$Builder;)V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/net/Uri;[BLcom/android/camera/Thumbnail;)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    array-length p0, p1

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Lcom/android/camera/Thumbnail;->setFileSize(J)V

    :cond_0
    return-void
.end method

.method private parseDocAndSave(IILjava/lang/String;Lcom/android/zxing/PreviewImage;[FLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v13, p2

    move-object/from16 v6, p3

    move-object/from16 v14, p6

    .line 1
    iget-object v2, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    array-length v3, v2

    const/4 v12, 0x0

    invoke-static {v2, v12, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2
    sget-object v3, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parse document E: shootOrientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", orientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", photo bitmap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", documentValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", previewImage data length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual/range {p4 .. p4}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", previewImage size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual/range {p4 .. p4}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", previewPoints = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    move-result-object v15

    invoke-virtual/range {p4 .. p4}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v16

    .line 8
    invoke-virtual/range {p4 .. p4}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v18

    invoke-virtual/range {p4 .. p4}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v19

    .line 9
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    move-result-object v3

    invoke-virtual {v3, v0, v13}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->getRotateYUVWithBitmap(II)Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    move-result-object v21

    move-object/from16 v17, v2

    move-object/from16 v20, p5

    .line 10
    invoke-virtual/range {v15 .. v21}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->doAlginDocument([BLandroid/graphics/Bitmap;II[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)[F

    move-result-object v5

    .line 11
    sget-object v0, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parse document: points = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->valueOf(Ljava/lang/String;)Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    move-result-object v18

    .line 13
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    move-result-object v15

    sget-object v19, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;->PPT:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;

    const/16 v20, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v5

    invoke-virtual/range {v15 .. v20}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->doCropAndEnhance(Landroid/graphics/Bitmap;[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 14
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 15
    :cond_0
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    sget-object v0, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parseDocAndSave: drawing privacy watermark started"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 18
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 19
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object/from16 v7, p8

    .line 20
    invoke-static {v0, v7, v2, v3, v13}, Lcom/android/camera/privacywatermark/PrivacyWatermarkUtils;->drawWatermark(Landroid/graphics/Canvas;Ljava/lang/String;III)V

    .line 21
    sget-object v0, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parseDocAndSave: drawing privacy watermark end"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object/from16 v7, p8

    .line 22
    :goto_0
    new-instance v2, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v2}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 23
    :try_start_0
    iget-object v0, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 24
    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifInterface;->removeCompressedThumbnail()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 25
    sget-object v3, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readExif: error "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v0, 0x1

    .line 26
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiDocPhotoVersion(B)Z

    .line 27
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    .line 29
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v15, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 31
    iget-object v0, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    array-length v0, v0

    int-to-long v3, v0

    move-object/from16 v6, p3

    move-object/from16 v7, p8

    invoke-static/range {v2 .. v7}, Lcom/android/camera/storage/Storage;->addXmpData([BJ[FLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 32
    iget-boolean v0, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mExifUpdated:Z

    if-nez v0, :cond_2

    .line 33
    iget-wide v3, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mAlgorithmName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iget v9, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget v10, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    iget-object v11, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    move/from16 v8, p2

    invoke-static/range {v2 .. v11}, Lcom/android/camera/ExifTool;->updateExifWithNullCaptureResult([BJZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;IIILandroid/location/Location;)[B

    move-result-object v2

    .line 34
    :cond_2
    array-length v0, v2

    iget-object v3, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    array-length v3, v3

    add-int/2addr v0, v3

    new-array v0, v0, [B

    .line 35
    array-length v3, v2

    invoke-static {v2, v12, v0, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget-object v3, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    array-length v2, v2

    array-length v4, v3

    invoke-static {v3, v12, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    sget-object v2, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "parse document X: "

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v2, v1, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v8, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    .line 39
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 40
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v12, 0x0

    move-object v3, v0

    move-object/from16 v6, p7

    move-object/from16 v7, p6

    move/from16 v9, p2

    .line 41
    invoke-static/range {v2 .. v12}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/content/Context;[BZZLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v3, p7

    .line 42
    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 43
    invoke-direct {v1, v13, v14, v2, v0}, Lcom/android/camera/storage/ParallelSaveRequest;->refreshThumbnail(ILjava/lang/String;Landroid/net/Uri;[B)V

    .line 44
    :cond_3
    iget-object v3, v1, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    new-instance v4, LOooO0O0/OooO0O0/OooO00o/o00ooo/OooO0OO;

    invoke-direct {v4, v2, v0}, LOooO0O0/OooO0O0/OooO00o/o00ooo/OooO0OO;-><init>(Landroid/net/Uri;[B)V

    invoke-interface {v3, v4}, Lcom/android/camera/storage/SaverCallback;->updateThumbnailExtras(Ljava/util/function/Consumer;)V

    return-void

    .line 45
    :cond_4
    :goto_2
    sget-object v0, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseDocAndSave: save "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", but doCropAndEnhance bitmap is null!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private refreshThumbnail(ILjava/lang/String;Landroid/net/Uri;[B)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    int-to-double v0, v0

    iget v2, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4080000000000000L    # 512.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 3
    sget-object v1, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri changed, so must try to create thumbnail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 4
    invoke-static {p4, p1, v0, p3, v1}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object p1

    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    const-wide/16 v2, -0x1

    goto :goto_0

    .line 5
    :cond_0
    array-length p4, p4

    int-to-long v2, p4

    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/android/camera/Thumbnail;->setFileSize(J)V

    .line 6
    iget-object p4, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {p4, p1, v1}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 p4, 0x2

    invoke-interface {p1, p3, p2, p4}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/net/Uri;Lcom/android/camera/Thumbnail;)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    array-length p1, p1

    int-to-long v0, p1

    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/android/camera/Thumbnail;->setFileSize(J)V

    :cond_1
    return-void
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mSize:I

    return v0
.end method

.method public isFinal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onFinish()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackTakePictureShotToViewCost(J)V

    .line 3
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "algo_capture_total_"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "algo_image_save_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 4
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-string/jumbo v4, "shot_2_view"

    aput-object v4, v2, v3

    .line 5
    invoke-virtual {v0, v2}, Lcom/android/camera/performance/PerformanceManager;->endAction([Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    invoke-static {v0, v1}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackImageSaver(Ljava/lang/Object;I)V

    const/4 v0, 0x4

    .line 7
    sget-object v1, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    const-string v2, "image save onFinish"

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v1

    .line 9
    invoke-static {}, Lcom/android/gallery3d/exif/ExifHelper;->clearCacheMap()V

    .line 10
    sget-object v0, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saved image finished, timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, LOooO0O0/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, LOooO0O0/OooO0O0/OooO0OO/OooO00o;->OooO00o(JIJLjava/lang/String;)V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    .line 13
    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->releaseImageData()V

    .line 15
    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    iget v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mSize:I

    invoke-interface {v0, v1}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    return-void
.end method

.method public reFillSaveRequest(Lcom/android/camera/storage/AbstractSaveRequest$Builder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/storage/AbstractSaveRequest;->reFillSaveRequest(Lcom/android/camera/storage/AbstractSaveRequest$Builder;)V

    .line 2
    instance-of v0, p1, Lcom/android/camera/storage/ParallelSaveRequest$Builder;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/android/camera/storage/ParallelSaveRequest$Builder;

    .line 4
    invoke-static {p1}, Lcom/android/camera/storage/ParallelSaveRequest$Builder;->access$000(Lcom/android/camera/storage/ParallelSaveRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/storage/ParallelSaveRequest;->mTimestamp:J

    .line 5
    invoke-static {p1}, Lcom/android/camera/storage/ParallelSaveRequest$Builder;->access$100(Lcom/android/camera/storage/ParallelSaveRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/storage/ParallelSaveRequest;->save()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/storage/ParallelSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 27

    move-object/from16 v10, p0

    .line 1
    iget-object v0, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-static {v0}, Lcom/android/camera2/compat/theme/MiThemeCompat;->processWatermark(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/AbstractSaveRequest;->parserParallelTaskData()V

    .line 3
    sget-object v0, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v10, Lcom/android/camera/storage/ParallelSaveRequest;->mTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, v10, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    monitor-enter v11

    .line 5
    :try_start_0
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v0

    iget-object v1, v10, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByPath(Ljava/lang/String;)Lcom/android/camera/db/element/SaveTask;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    .line 6
    iget-object v3, v10, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    .line 7
    invoke-static {v3}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/storage/Storage;->isSaveForProcess(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/db/item/DbItemBase;->generateItem(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/db/element/SaveTask;

    .line 9
    iget-object v4, v10, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/camera/db/element/SaveTask;->setPath(Ljava/lang/String;)V

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/db/element/SaveTask;->setStartTime(Ljava/lang/Long;)V

    .line 11
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getApplicationId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/db/element/SaveTask;->setApplicationId(I)V

    .line 12
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/camera/db/item/DbItemBase;->endItemAndInsert(Ljava/lang/Object;J)J

    .line 13
    sget-object v3, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert full size picture:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_0
    iget v3, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    .line 15
    iget v4, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    .line 16
    iget-object v5, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    invoke-static {v5}, Lcom/android/gallery3d/exif/ExifHelper;->getOrientation([B)I

    move-result v5

    .line 17
    iget v6, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    add-int/2addr v6, v5

    rem-int/lit16 v6, v6, 0xb4

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v26, v4

    move v4, v3

    move/from16 v3, v26

    :goto_0
    const/4 v6, 0x0

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->isValid()Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_2

    .line 19
    :cond_2
    iget-object v1, v10, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 20
    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->getMediaStoreId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->getResultUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 21
    sget-object v2, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "algo mark: uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v1, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "algo mark: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " | "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " | "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " | "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v1, v10, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v2, v10, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-static {v1, v6, v2}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->getMediaStoreId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 24
    iget-object v1, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v1, :cond_3

    iget-object v1, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDocumentBean()Lcom/android/zxing/DocumentDecoder$DocumentBean;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 25
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 26
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCurrentModuleIndex()I

    move-result v1

    const/16 v2, 0xba

    if-ne v1, v2, :cond_3

    .line 27
    iget-object v1, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getShootOrientation()I

    move-result v2

    .line 28
    iget-object v1, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDocumentBean()Lcom/android/zxing/DocumentDecoder$DocumentBean;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/android/zxing/DocumentDecoder$DocumentBean;->getDocValue()Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-virtual {v1}, Lcom/android/zxing/DocumentDecoder$DocumentBean;->getImage()Lcom/android/zxing/PreviewImage;

    move-result-object v6

    .line 31
    invoke-virtual {v1}, Lcom/android/zxing/DocumentDecoder$DocumentBean;->getPoints()[F

    move-result-object v9

    iget-object v1, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 32
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getPrivacyWatermark()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v1, p0

    move v3, v5

    move-object v5, v6

    move-object v6, v9

    move-object v9, v12

    .line 33
    invoke-direct/range {v1 .. v9}, Lcom/android/camera/storage/ParallelSaveRequest;->parseDocAndSave(IILjava/lang/String;Lcom/android/zxing/PreviewImage;[FLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :cond_3
    iget-boolean v1, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mExifUpdated:Z

    if-nez v1, :cond_4

    .line 35
    iget-object v12, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-wide v13, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    iget-object v1, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mAlgorithmName:Ljava/lang/String;

    iget-object v2, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iget v6, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget v9, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    iget-object v15, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    move-object/from16 v21, v15

    const/4 v15, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v9

    invoke-static/range {v12 .. v21}, Lcom/android/camera/ExifTool;->updateExifWithNullCaptureResult([BJZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;IIILandroid/location/Location;)[B

    move-result-object v1

    iput-object v1, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    .line 36
    :cond_4
    iget-object v12, v10, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v13, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-boolean v14, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mIsHeic:Z

    const/4 v15, 0x0

    iget-object v1, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    const/16 v22, 0x0

    move-object/from16 v16, v8

    move-object/from16 v17, v7

    move-object/from16 v18, v1

    move/from16 v19, v5

    move/from16 v20, v3

    move/from16 v21, v4

    invoke-static/range {v12 .. v22}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/content/Context;[BZZLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 37
    invoke-virtual {v1, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 38
    iget-object v2, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    invoke-direct {v10, v5, v7, v1, v2}, Lcom/android/camera/storage/ParallelSaveRequest;->refreshThumbnail(ILjava/lang/String;Landroid/net/Uri;[B)V

    .line 39
    :cond_5
    iget-object v2, v10, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    new-instance v3, LOooO0O0/OooO0O0/OooO00o/o00ooo/OooO0Oo;

    invoke-direct {v3, v10, v1}, LOooO0O0/OooO0O0/OooO00o/o00ooo/OooO0Oo;-><init>(Lcom/android/camera/storage/ParallelSaveRequest;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Lcom/android/camera/storage/SaverCallback;->updateThumbnailExtras(Ljava/util/function/Consumer;)V

    .line 40
    :goto_1
    iget-object v1, v10, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->markTaskFinish(Landroid/content/Context;Lcom/android/camera/db/element/SaveTask;)V

    goto/16 :goto_a

    .line 41
    :cond_6
    :goto_2
    iget-object v7, v10, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, v10, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_7
    iget-wide v7, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    invoke-static {v7, v8}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v7

    .line 42
    :goto_3
    iget-boolean v8, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mExifUpdated:Z

    if-nez v8, :cond_9

    .line 43
    iget-object v12, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-wide v13, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    if-eqz v0, :cond_8

    const/4 v15, 0x1

    goto :goto_4

    :cond_8
    move v15, v6

    :goto_4
    iget-object v8, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mAlgorithmName:Ljava/lang/String;

    iget-object v1, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iget v2, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget v9, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    iget-object v6, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    move-object/from16 v16, v8

    move-object/from16 v17, v1

    move/from16 v18, v5

    move/from16 v19, v2

    move/from16 v20, v9

    move-object/from16 v21, v6

    invoke-static/range {v12 .. v21}, Lcom/android/camera/ExifTool;->updateExifWithNullCaptureResult([BJZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;IIILandroid/location/Location;)[B

    move-result-object v1

    iput-object v1, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    .line 44
    :cond_9
    iget-object v12, v10, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-wide v14, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    iget-object v1, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    iget-object v2, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-boolean v6, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mIsHeic:Z

    if-eqz v0, :cond_a

    const/16 v22, 0x1

    goto :goto_5

    :cond_a
    const/16 v22, 0x0

    :goto_5
    if-eqz v0, :cond_b

    const/16 v23, 0x1

    goto :goto_6

    :cond_b
    const/16 v23, 0x0

    :goto_6
    move-object v13, v7

    move-object/from16 v16, v1

    move/from16 v17, v5

    move-object/from16 v18, v2

    move/from16 v19, v6

    move/from16 v20, v3

    move/from16 v21, v4

    invoke-static/range {v12 .. v23}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZ)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 45
    invoke-static {v7}, Lcom/android/camera/storage/Storage;->isSaveForProcess(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 46
    iget-boolean v2, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mNeedThumbnail:Z

    const-wide v8, 0x4090e00000000000L    # 1080.0

    if-eqz v2, :cond_e

    int-to-double v12, v3

    int-to-double v14, v4

    .line 47
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    div-double/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v2, v12

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    .line 49
    iget-object v6, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    const/4 v12, 0x0

    invoke-static {v6, v5, v2, v1, v12}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 50
    iget-object v6, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    if-nez v6, :cond_c

    const-wide/16 v12, -0x1

    goto :goto_7

    :cond_c
    iget-object v6, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    array-length v6, v6

    int-to-long v12, v6

    :goto_7
    invoke-virtual {v2, v12, v13}, Lcom/android/camera/Thumbnail;->setFileSize(J)V

    .line 51
    iget-object v6, v10, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v12, 0x1

    invoke-interface {v6, v2, v12}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    const/4 v12, 0x1

    goto :goto_8

    .line 52
    :cond_d
    iget-object v2, v10, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v2}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    :cond_e
    const/4 v12, 0x0

    .line 53
    :goto_8
    iget-object v2, v10, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v6, 0x2

    invoke-interface {v2, v1, v7, v6}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    if-eqz v0, :cond_f

    .line 54
    sget-object v2, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "algo mark: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/db/element/SaveTask;->setMediaStoreId(Ljava/lang/Long;)V

    .line 57
    iget-object v2, v10, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->markTaskFinish(Landroid/content/Context;Lcom/android/camera/db/element/SaveTask;)V

    .line 58
    iget-object v0, v10, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v0, v1}, Lcom/android/camera/storage/SaverCallback;->tryUpdateThumbnailUri(Landroid/net/Uri;)V

    goto :goto_a

    :cond_f
    if-nez v12, :cond_13

    int-to-double v2, v3

    int-to-double v6, v4

    .line 59
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 61
    iget-object v2, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    const/4 v3, 0x0

    invoke-static {v2, v5, v0, v1, v3}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 62
    iget-object v2, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    if-nez v2, :cond_10

    const-wide/16 v2, -0x1

    goto :goto_9

    :cond_10
    iget-object v2, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    array-length v2, v2

    int-to-long v2, v2

    :goto_9
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/Thumbnail;->setFileSize(J)V

    .line 63
    iget-object v2, v10, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 64
    :cond_11
    iget-object v12, v10, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v13

    iget-object v15, v10, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v12 .. v25}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->insertToParallelTaskProvider(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JIIILjava/lang/String;)V

    goto :goto_a

    .line 65
    :cond_12
    invoke-static {v7}, Lcom/android/camera/storage/Storage;->isSaveForProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 66
    iget-object v0, v10, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v7, v2}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 67
    :cond_13
    :goto_a
    iget-object v0, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v0, :cond_14

    const/16 v0, 0x9

    iget-object v1, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 68
    iget-object v0, v10, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackPictureData(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 69
    :cond_14
    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
