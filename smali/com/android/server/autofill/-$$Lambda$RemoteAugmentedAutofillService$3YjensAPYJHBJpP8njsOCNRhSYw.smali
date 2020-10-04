.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$3YjensAPYJHBJpP8njsOCNRhSYw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

.field private final synthetic f$1:Landroid/os/ICancellationSignal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/os/ICancellationSignal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$3YjensAPYJHBJpP8njsOCNRhSYw;->f$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    iput-object p2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$3YjensAPYJHBJpP8njsOCNRhSYw;->f$1:Landroid/os/ICancellationSignal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$3YjensAPYJHBJpP8njsOCNRhSYw;->f$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    iget-object v1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$3YjensAPYJHBJpP8njsOCNRhSYw;->f$1:Landroid/os/ICancellationSignal;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->lambda$dispatchOnFillTimeout$1$RemoteAugmentedAutofillService(Landroid/os/ICancellationSignal;)V

    return-void
.end method
