.class public final synthetic Lcom/android/server/usage/-$$Lambda$UsageStatsIdleService$yCu7ZLOsLXVx3Ko_5w14oCiO5p4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usage/UsageStatsIdleService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/UsageStatsIdleService;Landroid/app/job/JobParameters;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/-$$Lambda$UsageStatsIdleService$yCu7ZLOsLXVx3Ko_5w14oCiO5p4;->f$0:Lcom/android/server/usage/UsageStatsIdleService;

    iput-object p2, p0, Lcom/android/server/usage/-$$Lambda$UsageStatsIdleService$yCu7ZLOsLXVx3Ko_5w14oCiO5p4;->f$1:Landroid/app/job/JobParameters;

    iput p3, p0, Lcom/android/server/usage/-$$Lambda$UsageStatsIdleService$yCu7ZLOsLXVx3Ko_5w14oCiO5p4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usage/-$$Lambda$UsageStatsIdleService$yCu7ZLOsLXVx3Ko_5w14oCiO5p4;->f$0:Lcom/android/server/usage/UsageStatsIdleService;

    iget-object v1, p0, Lcom/android/server/usage/-$$Lambda$UsageStatsIdleService$yCu7ZLOsLXVx3Ko_5w14oCiO5p4;->f$1:Landroid/app/job/JobParameters;

    iget v2, p0, Lcom/android/server/usage/-$$Lambda$UsageStatsIdleService$yCu7ZLOsLXVx3Ko_5w14oCiO5p4;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UsageStatsIdleService;->lambda$onStartJob$0$UsageStatsIdleService(Landroid/app/job/JobParameters;I)V

    return-void
.end method
