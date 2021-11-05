.class public final synthetic Lcom/android/server/backup/-$$Lambda$BackupManagerService$1$wNR2kL0jG0FP7rVncyt3YJRw1RI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/BackupManagerService$1;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$1$wNR2kL0jG0FP7rVncyt3YJRw1RI;->f$0:Lcom/android/server/backup/BackupManagerService$1;

    iput p2, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$1$wNR2kL0jG0FP7rVncyt3YJRw1RI;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$1$wNR2kL0jG0FP7rVncyt3YJRw1RI;->f$0:Lcom/android/server/backup/BackupManagerService$1;

    iget v1, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$1$wNR2kL0jG0FP7rVncyt3YJRw1RI;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$1;->lambda$onReceive$0$BackupManagerService$1(I)V

    return-void
.end method
