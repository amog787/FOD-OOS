.class Lcom/android/server/autofill/ui/FillUi$ViewItem;
.super Ljava/lang/Object;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/FillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewItem"
.end annotation


# instance fields
.field public final dataset:Landroid/service/autofill/Dataset;

.field public final filter:Ljava/util/regex/Pattern;

.field public final filterable:Z

.field public final value:Ljava/lang/String;

.field public final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;
    .param p2, "filter"    # Ljava/util/regex/Pattern;
    .param p3, "filterable"    # Z
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "view"    # Landroid/view/View;

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    .line 560
    iput-object p4, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->value:Ljava/lang/String;

    .line 561
    iput-object p5, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->view:Landroid/view/View;

    .line 562
    iput-object p2, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->filter:Ljava/util/regex/Pattern;

    .line 563
    iput-boolean p3, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->filterable:Z

    .line 564
    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "filterText"    # Ljava/lang/CharSequence;

    .line 571
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 573
    return v1

    .line 575
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->filterable:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 577
    return v2

    .line 579
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "constraintLowerCase":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->filter:Ljava/util/regex/Pattern;

    if-eqz v3, :cond_2

    .line 582
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1

    .line 585
    :cond_2
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->value:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 586
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 587
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 585
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewItem:[view="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->view:Landroid/view/View;

    .line 594
    invoke-virtual {v1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 595
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, "datasetId":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .line 597
    const-string v2, ", dataset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :cond_1
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->value:Ljava/lang/String;

    const-string v3, "_chars"

    if-eqz v2, :cond_2

    .line 601
    const-string v2, ", value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->filterable:Z

    if-eqz v2, :cond_3

    .line 604
    const-string v2, ", filterable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    :cond_3
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->filter:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_4

    .line 608
    const-string v2, ", filter="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->filter:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    :cond_4
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
