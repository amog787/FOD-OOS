.class public final synthetic Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/Session;

.field public final synthetic f$1:I

.field public final synthetic f$2:[Landroid/view/autofill/AutofillId;

.field public final synthetic f$3:[Ljava/lang/String;

.field public final synthetic f$4:[Ljava/lang/String;

.field public final synthetic f$5:Ljava/util/ArrayList;

.field public final synthetic f$6:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/Session;I[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;->f$0:Lcom/android/server/autofill/Session;

    iput p2, p0, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;->f$1:I

    iput-object p3, p0, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;->f$2:[Landroid/view/autofill/AutofillId;

    iput-object p4, p0, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;->f$3:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;->f$4:[Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;->f$5:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;->f$6:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;->f$0:Lcom/android/server/autofill/Session;

    iget v1, p0, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;->f$1:I

    iget-object v2, p0, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;->f$2:[Landroid/view/autofill/AutofillId;

    iget-object v3, p0, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;->f$3:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;->f$4:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;->f$5:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;->f$6:Ljava/util/ArrayList;

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/autofill/Session;->lambda$logFieldClassificationScore$2$Session(I[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    return-void
.end method
