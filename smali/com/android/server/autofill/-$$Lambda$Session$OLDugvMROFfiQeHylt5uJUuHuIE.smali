.class public final synthetic Lcom/android/server/autofill/-$$Lambda$Session$OLDugvMROFfiQeHylt5uJUuHuIE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$Session$OLDugvMROFfiQeHylt5uJUuHuIE;->f$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$Session$OLDugvMROFfiQeHylt5uJUuHuIE;->f$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->lambda$triggerAugmentedAutofillLocked$8(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V

    return-void
.end method
