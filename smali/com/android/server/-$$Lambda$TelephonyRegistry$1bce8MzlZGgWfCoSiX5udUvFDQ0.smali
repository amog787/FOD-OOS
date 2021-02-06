.class public final synthetic Lcom/android/server/-$$Lambda$TelephonyRegistry$1bce8MzlZGgWfCoSiX5udUvFDQ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$TelephonyRegistry$1bce8MzlZGgWfCoSiX5udUvFDQ0;->f$0:Lcom/android/server/TelephonyRegistry;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$TelephonyRegistry$1bce8MzlZGgWfCoSiX5udUvFDQ0;->f$0:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v0, p1}, Lcom/android/server/TelephonyRegistry;->lambda$notifyCarrierNetworkChange$0$TelephonyRegistry(I)Z

    move-result p1

    return p1
.end method
