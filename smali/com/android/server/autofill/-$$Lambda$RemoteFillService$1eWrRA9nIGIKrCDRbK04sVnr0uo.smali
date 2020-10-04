.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteFillService$1eWrRA9nIGIKrCDRbK04sVnr0uo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;

.field private final synthetic f$1:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

.field private final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$1eWrRA9nIGIKrCDRbK04sVnr0uo;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iput-object p2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$1eWrRA9nIGIKrCDRbK04sVnr0uo;->f$1:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    iput-object p3, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$1eWrRA9nIGIKrCDRbK04sVnr0uo;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$1eWrRA9nIGIKrCDRbK04sVnr0uo;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iget-object v1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$1eWrRA9nIGIKrCDRbK04sVnr0uo;->f$1:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    iget-object v2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$1eWrRA9nIGIKrCDRbK04sVnr0uo;->f$2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/RemoteFillService;->lambda$dispatchOnSaveRequestFailure$6$RemoteFillService(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;Ljava/lang/CharSequence;)V

    return-void
.end method
