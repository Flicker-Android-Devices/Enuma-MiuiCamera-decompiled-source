.class public Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;
.super Ljava/lang/Object;
.source "XiaomiAlgoMediaInterpolator.java"


# instance fields
.field public mCurrentInterpolationTimes:I

.field public mHeight:I

.field public mInterpolatorJNI:Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;

.field public mNativeContext:J

.field public mWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 2
    iput p3, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mCurrentInterpolationTimes:I

    .line 3
    iput p1, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mWidth:I

    .line 4
    iput p2, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mHeight:I

    .line 5
    new-instance p1, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;

    invoke-direct {p1}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;-><init>()V

    iput-object p1, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mInterpolatorJNI:Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;

    .line 6
    iget p2, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mHeight:I

    iget p3, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mWidth:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2, p3, v0}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;->initializeAlgo(IIII)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mNativeContext:J

    return-void
.end method


# virtual methods
.method public interpolatorFrame([B[BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lcom/miui/extravideo/common/MediaParamsHolder;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p7

    .line 1
    iget-object v2, v0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mInterpolatorJNI:Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;

    iget-wide v3, v0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mNativeContext:J

    iget v10, v1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoWidth:I

    iget v11, v1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoHeight:I

    iget v12, v1, Lcom/miui/extravideo/common/MediaParamsHolder;->stride:I

    move-object v1, v2

    move-wide v2, v3

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v12}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;->Process(J[B[BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 2
    iget v1, v0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mCurrentInterpolationTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mCurrentInterpolationTimes:I

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoMediaInterpolator;->mInterpolatorJNI:Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;

    invoke-virtual {v0}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiAlgoInterpolatorJNI;->UnInit()I

    return-void
.end method
