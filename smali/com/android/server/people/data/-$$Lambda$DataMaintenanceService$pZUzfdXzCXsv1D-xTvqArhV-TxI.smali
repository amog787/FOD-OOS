.class public final synthetic Lcom/android/server/people/data/-$$Lambda$DataMaintenanceService$pZUzfdXzCXsv1D-xTvqArhV-TxI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataMaintenanceService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataMaintenanceService;ILandroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/-$$Lambda$DataMaintenanceService$pZUzfdXzCXsv1D-xTvqArhV-TxI;->f$0:Lcom/android/server/people/data/DataMaintenanceService;

    iput p2, p0, Lcom/android/server/people/data/-$$Lambda$DataMaintenanceService$pZUzfdXzCXsv1D-xTvqArhV-TxI;->f$1:I

    iput-object p3, p0, Lcom/android/server/people/data/-$$Lambda$DataMaintenanceService$pZUzfdXzCXsv1D-xTvqArhV-TxI;->f$2:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/people/data/-$$Lambda$DataMaintenanceService$pZUzfdXzCXsv1D-xTvqArhV-TxI;->f$0:Lcom/android/server/people/data/DataMaintenanceService;

    iget v1, p0, Lcom/android/server/people/data/-$$Lambda$DataMaintenanceService$pZUzfdXzCXsv1D-xTvqArhV-TxI;->f$1:I

    iget-object v2, p0, Lcom/android/server/people/data/-$$Lambda$DataMaintenanceService$pZUzfdXzCXsv1D-xTvqArhV-TxI;->f$2:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/DataMaintenanceService;->lambda$onStartJob$0$DataMaintenanceService(ILandroid/app/job/JobParameters;)V

    return-void
.end method
