.class public Lcom/android/camera/fragment/mode/ModeItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ModeItemDecoration.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ModeItemDecoration"


# instance fields
.field public mBottomMargin:I

.field public mContext:Landroid/content/Context;

.field public mHorMargin:I

.field public mModeListHorMargin:I

.field public mPerLineCount:I

.field public mTopMargin:I

.field public mType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/fragment/mode/IMoreMode;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    .line 3
    iput p3, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mType:I

    .line 4
    invoke-interface {p2}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mPerLineCount:I

    .line 5
    invoke-static {p1, p3}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getPanelWidth(Landroid/content/Context;I)I

    move-result p2

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070618

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/MiThemeOperationTabIf;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/camera2/compat/theme/MiThemeOperationTabIf;->getModeItemWidth(Landroid/content/Context;)I

    move-result v1

    :goto_0
    if-nez p3, :cond_1

    .line 8
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/MiThemeOperationTabIf;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/android/camera2/compat/theme/MiThemeOperationTabIf;->getMoreModeNormalHorMargin(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mModeListHorMargin:I

    goto :goto_1

    :cond_1
    if-ne p3, v0, :cond_2

    .line 9
    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070624

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mModeListHorMargin:I

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/MiThemeOperationTabIf;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/android/camera2/compat/theme/MiThemeOperationTabIf;->getMoreModePopupHorMargin(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mModeListHorMargin:I

    .line 11
    :goto_1
    iget v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mPerLineCount:I

    mul-int/2addr v1, v2

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mModeListHorMargin:I

    const/4 v3, 0x2

    mul-int/2addr v1, v3

    sub-int/2addr p2, v1

    mul-int/2addr v2, v3

    div-int/2addr p2, v2

    iput p2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mHorMargin:I

    .line 12
    invoke-static {p1, p3}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getTopMarginForNormal(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mTopMargin:I

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-eq p3, v3, :cond_5

    if-ne p3, v1, :cond_3

    goto :goto_3

    .line 13
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v2

    if-ne p3, v0, :cond_4

    move p3, v1

    goto :goto_2

    :cond_4
    move p3, p2

    :goto_2
    invoke-static {p1, v2, p3}, Lcom/android/camera/display/Display;->getMoreModeTabMarginVer(Landroid/content/Context;IZ)I

    move-result p1

    goto :goto_4

    .line 14
    :cond_5
    :goto_3
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/MiThemeOperationTabIf;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/android/camera2/compat/theme/MiThemeOperationTabIf;->getMoreItemBottomMargin(Landroid/content/Context;)I

    move-result p1

    .line 15
    :goto_4
    iput p1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mBottomMargin:I

    .line 16
    sget-object p1, Lcom/android/camera/fragment/mode/ModeItemDecoration;->TAG:Ljava/lang/String;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mModeListHorMargin:I

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, p2

    iget p2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mHorMargin:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    iget p2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mTopMargin:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v3

    iget p2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mBottomMargin:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    const-string p2, "init ModeItemDecoration, mModeListHorMargin = %s, mHorMargin = %s, mTopMargin = %s, mBottomMargin = %s."

    .line 18
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    iget p4, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mHorMargin:I

    .line 3
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mBottomMargin:I

    .line 4
    iget v1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mTopMargin:I

    .line 5
    iget v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mType:I

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_1

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 8
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v2, -0x1

    if-eq p2, v2, :cond_6

    .line 9
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p2

    if-eq p2, v5, :cond_3

    if-eq p2, v4, :cond_3

    const/4 p3, 0x6

    if-ne p2, p3, :cond_6

    :cond_3
    move p4, v3

    move v0, p4

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 11
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 13
    invoke-static {p2, p3}, Lcom/android/camera/fragment/mode/MoreModeHelper;->isFooter4PopupStyle(II)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    .line 15
    :cond_6
    :goto_1
    invoke-virtual {p1, p4, v1, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method
