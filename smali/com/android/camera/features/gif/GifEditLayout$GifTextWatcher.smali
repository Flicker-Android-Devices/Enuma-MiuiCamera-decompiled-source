.class public Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;
.super Ljava/lang/Object;
.source "GifEditLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/gif/GifEditLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GifTextWatcher"
.end annotation


# instance fields
.field public after:I

.field public count:I

.field public currentIndex:I

.field public length:I

.field public start:I

.field public final synthetic this$0:Lcom/android/camera/features/gif/GifEditLayout;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/gif/GifEditLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11

    const-string v0, ""

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$000(Lcom/android/camera/features/gif/GifEditLayout;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$100(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$100(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    .line 5
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    .line 7
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 8
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    .line 10
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 11
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v2}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 13
    iput v3, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->length:I

    move v1, v3

    move v2, v1

    move v4, v2

    .line 14
    :goto_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    const/16 v6, 0x20

    const/16 v7, 0xa

    const/4 v8, 0x1

    if-ge v1, v5, :cond_8

    .line 15
    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_4

    goto :goto_3

    .line 16
    :cond_4
    iget v9, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->length:I

    iget-object v10, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v10, v5}, Lcom/android/camera/features/gif/GifEditLayout;->access$500(Lcom/android/camera/features/gif/GifEditLayout;C)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x2

    goto :goto_2

    :cond_5
    move v10, v8

    :goto_2
    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->length:I

    if-le v9, v6, :cond_6

    .line 17
    iput v6, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->length:I

    goto :goto_4

    .line 18
    :cond_6
    iget-object v6, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v6}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v2, :cond_7

    .line 19
    iget v5, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->length:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_7

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    sub-int/2addr v5, v8

    if-eq v1, v5, :cond_7

    .line 20
    iget-object v2, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v2}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v1

    move v2, v8

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 21
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_9

    move v3, v8

    :cond_9
    invoke-static {v1, v3}, Lcom/android/camera/features/gif/GifEditLayout;->access$600(Lcom/android/camera/features/gif/GifEditLayout;Z)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    iget v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->length:I

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    .line 24
    :cond_a
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->start:I

    if-gt v0, v4, :cond_b

    iget v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->after:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->count:I

    iget v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->after:I

    if-eq v0, v1, :cond_b

    .line 27
    iget v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->currentIndex:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->currentIndex:I

    .line 28
    :cond_b
    iget v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->currentIndex:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->currentIndex:I

    .line 29
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->currentIndex:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_7

    .line 30
    :cond_c
    :goto_5
    iget v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->start:I

    add-int/lit8 v2, v4, 0x1

    if-ne v1, v2, :cond_d

    iget v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->after:I

    if-nez v1, :cond_d

    iget v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->count:I

    if-ne v1, v8, :cond_d

    .line 31
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 32
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_6

    .line 36
    :cond_d
    iget v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->length:I

    if-ne v1, v6, :cond_e

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 37
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 39
    :cond_e
    :goto_6
    iget p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->length:I

    if-nez p1, :cond_f

    .line 40
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    return-void

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$000(Lcom/android/camera/features/gif/GifEditLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$102(Lcom/android/camera/features/gif/GifEditLayout;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    if-eq p4, p3, :cond_4

    if-nez p4, :cond_2

    sub-int p1, p2, p3

    add-int/lit8 p1, p1, 0x1

    .line 3
    iput p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->currentIndex:I

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 4
    iget p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->length:I

    const/16 v0, 0x20

    if-ne p1, v0, :cond_3

    .line 5
    iget p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->currentIndex:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->currentIndex:I

    goto :goto_1

    :cond_3
    add-int p1, p2, p4

    .line 6
    iput p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->currentIndex:I

    .line 7
    :cond_4
    :goto_1
    iput p2, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->start:I

    .line 8
    iput p3, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->count:I

    .line 9
    iput p4, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->after:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    sget-object p2, Lcom/android/camera/features/gif/GifEditLayout;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
