.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$zt04rV6kTquQwdDYqT9tjLbRn14;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$2:Landroid/content/ComponentName;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$zt04rV6kTquQwdDYqT9tjLbRn14;->f$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    iput-object p2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$zt04rV6kTquQwdDYqT9tjLbRn14;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$zt04rV6kTquQwdDYqT9tjLbRn14;->f$2:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$zt04rV6kTquQwdDYqT9tjLbRn14;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$zt04rV6kTquQwdDYqT9tjLbRn14;->f$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    iget-object v1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$zt04rV6kTquQwdDYqT9tjLbRn14;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$zt04rV6kTquQwdDYqT9tjLbRn14;->f$2:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$zt04rV6kTquQwdDYqT9tjLbRn14;->f$3:I

    move-object v4, p1

    check-cast v4, Ljava/lang/Void;

    move-object v5, p2

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->lambda$onRequestAutofillLocked$1$RemoteAugmentedAutofillService(Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/ComponentName;ILjava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method
