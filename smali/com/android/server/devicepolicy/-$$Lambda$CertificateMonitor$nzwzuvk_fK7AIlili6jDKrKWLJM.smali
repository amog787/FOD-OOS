.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$CertificateMonitor$nzwzuvk_fK7AIlili6jDKrKWLJM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/devicepolicy/CertificateMonitor;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/CertificateMonitor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$CertificateMonitor$nzwzuvk_fK7AIlili6jDKrKWLJM;->f$0:Lcom/android/server/devicepolicy/CertificateMonitor;

    iput p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$CertificateMonitor$nzwzuvk_fK7AIlili6jDKrKWLJM;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$CertificateMonitor$nzwzuvk_fK7AIlili6jDKrKWLJM;->f$0:Lcom/android/server/devicepolicy/CertificateMonitor;

    iget v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$CertificateMonitor$nzwzuvk_fK7AIlili6jDKrKWLJM;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/CertificateMonitor;->lambda$onCertificateApprovalsChanged$0$CertificateMonitor(I)V

    return-void
.end method
