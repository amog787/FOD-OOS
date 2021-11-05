.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$DnsManager$PrivateDnsValidationStatuses$_X4_M08nKysv-L4hDpqAsa4SBxI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/net/LinkProperties;


# direct methods
.method public synthetic constructor <init>(Landroid/net/LinkProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$DnsManager$PrivateDnsValidationStatuses$_X4_M08nKysv-L4hDpqAsa4SBxI;->f$0:Landroid/net/LinkProperties;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$DnsManager$PrivateDnsValidationStatuses$_X4_M08nKysv-L4hDpqAsa4SBxI;->f$0:Landroid/net/LinkProperties;

    check-cast p1, Landroid/util/Pair;

    check-cast p2, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    invoke-static {v0, p1, p2}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->lambda$fillInValidatedPrivateDns$0(Landroid/net/LinkProperties;Landroid/util/Pair;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;)V

    return-void
.end method
