.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$yudIvtYKB9W2eb_t3RT2S1y3KiI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/ICancellationSignal;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ICancellationSignal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$yudIvtYKB9W2eb_t3RT2S1y3KiI;->f$0:Landroid/os/ICancellationSignal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$yudIvtYKB9W2eb_t3RT2S1y3KiI;->f$0:Landroid/os/ICancellationSignal;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->lambda$dispatchCancellation$2(Landroid/os/ICancellationSignal;)V

    return-void
.end method
