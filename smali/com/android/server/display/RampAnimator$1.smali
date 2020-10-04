.class Lcom/android/server/display/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/RampAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/RampAnimator;

    .line 279
    .local p0, "this":Lcom/android/server/display/RampAnimator$1;, "Lcom/android/server/display/RampAnimator$1;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 282
    .local p0, "this":Lcom/android/server/display/RampAnimator$1;, "Lcom/android/server/display/RampAnimator$1;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    .line 283
    .local v0, "frameTimeNanos":J
    iget-object v2, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v2}, Lcom/android/server/display/RampAnimator;->access$100(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x3089705f    # 1.0E-9f

    mul-float/2addr v2, v3

    .line 285
    .local v2, "timeDelta":F
    iget-object v3, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v3, v0, v1}, Lcom/android/server/display/RampAnimator;->access$102(Lcom/android/server/display/RampAnimator;J)J

    .line 291
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v3

    .line 292
    .local v3, "scale":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    .line 294
    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/server/display/RampAnimator;->access$202(Lcom/android/server/display/RampAnimator;F)F

    goto :goto_0

    .line 296
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v3

    .line 297
    .local v4, "amount":F
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-le v5, v6, :cond_1

    .line 298
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)F

    move-result v6

    add-float/2addr v6, v4

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/display/RampAnimator;->access$202(Lcom/android/server/display/RampAnimator;F)F

    goto :goto_0

    .line 300
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)F

    move-result v6

    sub-float/2addr v6, v4

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/display/RampAnimator;->access$202(Lcom/android/server/display/RampAnimator;F)F

    .line 303
    .end local v4    # "amount":F
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v4

    .line 304
    .local v4, "oldCurrentValue":I
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/display/RampAnimator;->access$502(Lcom/android/server/display/RampAnimator;I)I

    .line 307
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    const/16 v7, 0x3ff

    if-ne v5, v7, :cond_d

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    if-eqz v5, :cond_d

    .line 308
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    const/16 v7, 0x46

    if-ge v5, v7, :cond_2

    .line 309
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v5, v7}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto/16 :goto_4

    .line 310
    :cond_2
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    const/16 v7, 0xc8

    const-string v8, " mCurrentValue:"

    const-string v9, " mDelta:"

    const-string/jumbo v10, "mRate:"

    const-string v11, "RampAnimator"

    const/16 v12, 0x32

    if-le v5, v7, :cond_3

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    sub-int/2addr v5, v7

    if-lt v5, v12, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    const/16 v7, 0x1f4

    if-le v5, v7, :cond_6

    .line 311
    :cond_4
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    sub-int/2addr v5, v7

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x3

    if-le v5, v7, :cond_5

    .line 312
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    invoke-static {v5, v7}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_1

    .line 314
    :cond_5
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    div-int/lit8 v7, v7, 0x6

    invoke-static {v5, v7}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    .line 315
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 316
    :cond_6
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    if-gez v5, :cond_d

    .line 317
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    const/4 v13, 0x5

    if-ge v5, v12, :cond_a

    .line 318
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    if-le v5, v12, :cond_9

    .line 319
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    sub-int/2addr v5, v7

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x3

    if-le v5, v7, :cond_7

    .line 320
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x4

    invoke-static {v5, v7}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_2

    .line 324
    :cond_7
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0xa

    invoke-static {v5, v7}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    .line 326
    :goto_2
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    const/16 v7, 0x1e

    if-ge v5, v7, :cond_8

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    const/16 v7, 0x6e

    if-ge v5, v7, :cond_8

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    if-le v5, v12, :cond_8

    .line 327
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5, v13}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    .line 329
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 331
    :cond_9
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v7, 0x1e

    invoke-static {v5, v7}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 334
    :cond_a
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    neg-int v5, v5

    if-le v5, v7, :cond_c

    .line 335
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    neg-int v7, v7

    div-int/2addr v7, v13

    iget-object v13, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v13}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v13

    iget-object v14, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v14}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v14

    sub-int/2addr v13, v14

    mul-int/lit8 v13, v13, 0x64

    iget-object v14, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v14}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v14

    neg-int v14, v14

    div-int/2addr v13, v14

    mul-int/2addr v7, v13

    div-int/lit8 v7, v7, 0x64

    invoke-static {v5, v7}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    .line 336
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    if-ge v7, v12, :cond_b

    goto :goto_3

    :cond_b
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v12

    :goto_3
    invoke-static {v5, v12}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 338
    :cond_c
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    neg-int v5, v5

    if-ge v5, v7, :cond_d

    .line 339
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x8

    invoke-static {v5, v7}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    .line 340
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_d
    :goto_4
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    if-eq v4, v5, :cond_13

    .line 348
    const/16 v5, 0xbb8

    const/16 v7, 0x55

    if-le v4, v7, :cond_10

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    if-gt v8, v7, :cond_10

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-boolean v7, v7, Lcom/android/server/display/RampAnimator;->mEnableDelay:Z

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    and-int/2addr v7, v6

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    if-eqz v7, :cond_10

    .line 349
    :cond_e
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/display/RampAnimator;->access$902(Lcom/android/server/display/RampAnimator;I)I

    .line 350
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/server/display/RampAnimator;->access$1002(Lcom/android/server/display/RampAnimator;J)J

    .line 351
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7, v6}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    .line 352
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$1100(Lcom/android/server/display/RampAnimator;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 353
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v8, 0x1388

    invoke-static {v7, v8}, Lcom/android/server/display/RampAnimator;->access$1202(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_5

    .line 355
    :cond_f
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7, v5}, Lcom/android/server/display/RampAnimator;->access$1202(Lcom/android/server/display/RampAnimator;I)I

    .line 358
    :cond_10
    :goto_5
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$900(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$1200(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    int-to-long v11, v7

    cmp-long v7, v9, v11

    if-lez v7, :cond_12

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    and-int/2addr v7, v6

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    if-eqz v7, :cond_12

    .line 359
    :cond_11
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$900(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    invoke-static {v7, v9}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    .line 360
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7, v8}, Lcom/android/server/display/RampAnimator;->access$902(Lcom/android/server/display/RampAnimator;I)I

    .line 361
    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7, v5}, Lcom/android/server/display/RampAnimator;->access$1202(Lcom/android/server/display/RampAnimator;I)I

    .line 364
    :cond_12
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$1400(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$1300(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 367
    :cond_13
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    if-eq v5, v7, :cond_14

    .line 368
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$1500(Lcom/android/server/display/RampAnimator;)V

    goto :goto_6

    .line 370
    :cond_14
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/server/display/RampAnimator;->access$1602(Lcom/android/server/display/RampAnimator;Z)Z

    .line 371
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$1700(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 372
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$1700(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    .line 375
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$1800(Lcom/android/server/display/RampAnimator;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 376
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$1700(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v5

    const/16 v8, 0x7d0

    invoke-interface {v5, v6, v8}, Lcom/android/server/display/RampAnimator$Listener;->setDimmingSpeed(II)V

    .line 377
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5, v7}, Lcom/android/server/display/RampAnimator;->access$1802(Lcom/android/server/display/RampAnimator;Z)Z

    .line 382
    :cond_15
    :goto_6
    return-void
.end method
