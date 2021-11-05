.class public final synthetic Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/autofill/FieldClassificationStrategy$Command;


# instance fields
.field public final synthetic f$0:Landroid/os/RemoteCallback;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:[Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/os/Bundle;

.field public final synthetic f$6:Landroid/util/ArrayMap;

.field public final synthetic f$7:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;->f$0:Landroid/os/RemoteCallback;

    iput-object p2, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;->f$3:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;->f$5:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;->f$6:Landroid/util/ArrayMap;

    iput-object p8, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;->f$7:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final run(Landroid/service/autofill/IAutofillFieldClassificationService;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;->f$0:Landroid/os/RemoteCallback;

    iget-object v1, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;->f$2:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;->f$3:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;->f$5:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;->f$6:Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;->f$7:Landroid/util/ArrayMap;

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/android/server/autofill/FieldClassificationStrategy;->lambda$calculateScores$2(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/service/autofill/IAutofillFieldClassificationService;)V

    return-void
.end method
