.class public final synthetic Lcom/android/server/backup/-$$Lambda$BackupManagerService$PzvNLQ5gp1PWnFQ6Pxc6Lw6ubKU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/BackupManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$PzvNLQ5gp1PWnFQ6Pxc6Lw6ubKU;->f$0:Lcom/android/server/backup/BackupManagerService;

    iput p2, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$PzvNLQ5gp1PWnFQ6Pxc6Lw6ubKU;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$PzvNLQ5gp1PWnFQ6Pxc6Lw6ubKU;->f$0:Lcom/android/server/backup/BackupManagerService;

    iget v1, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$PzvNLQ5gp1PWnFQ6Pxc6Lw6ubKU;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->lambda$onStopUser$1$BackupManagerService(I)V

    return-void
.end method
