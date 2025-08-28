.class public Lcom/android/camera/module/common/BaseAppStateManager;
.super Ljava/lang/Object;
.source "BaseAppStateManager.java"

# interfaces
.implements Lcom/android/camera/module/common/BaseAppStateManagerInterface;


# instance fields
.field public mAutoHibernationMode:Z

.field public mDeviceRotation:F

.field public mDisplayRotation:I

.field public mEnterAutoHibernationCount:I

.field public mIsAutoHibernationSupported:Z

.field public mLastBackPressedTime:J

.field public mOrientation:I

.field public mOrientationCompensation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mOrientationCompensation:I

    .line 3
    iput v0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mOrientation:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    iput v1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mDeviceRotation:F

    .line 5
    iput v0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mEnterAutoHibernationCount:I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mDisplayRotation:I

    return-void
.end method


# virtual methods
.method public getDeviceRotation()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mDeviceRotation:F

    return v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mDisplayRotation:I

    return v0
.end method

.method public getEnterAutoHibernationCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mEnterAutoHibernationCount:I

    return v0
.end method

.method public getLastBackPressedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mLastBackPressedTime:J

    return-wide v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mOrientation:I

    return v0
.end method

.method public getOrientationCompensation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mOrientationCompensation:I

    return v0
.end method

.method public isAutoHibernationMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mAutoHibernationMode:Z

    return v0
.end method

.method public isAutoHibernationSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mIsAutoHibernationSupported:Z

    return v0
.end method

.method public setAutoHibernationMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mAutoHibernationMode:Z

    return-void
.end method

.method public setAutoHibernationSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mIsAutoHibernationSupported:Z

    return-void
.end method

.method public setDeviceRotation(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mDeviceRotation:F

    return-void
.end method

.method public setDisplayRotation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mDisplayRotation:I

    return-void
.end method

.method public setEnterAutoHibernationCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mEnterAutoHibernationCount:I

    return-void
.end method

.method public setLastBackPressedTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mLastBackPressedTime:J

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mOrientation:I

    return-void
.end method

.method public setOrientationCompensation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseAppStateManager;->mOrientationCompensation:I

    return-void
.end method
