.class public Lcom/android/server/backup/internal/Operation;
.super Ljava/lang/Object;
.source "Operation.java"


# instance fields
.field public final callback:Lcom/android/server/backup/BackupRestoreTask;

.field public state:I

.field public final type:I


# direct methods
.method public constructor <init>(ILcom/android/server/backup/BackupRestoreTask;I)V
    .locals 0
    .param p1, "initialState"    # I
    .param p2, "callbackObj"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p3, "type"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/android/server/backup/internal/Operation;->state:I

    .line 29
    iput-object p2, p0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    .line 30
    iput p3, p0, Lcom/android/server/backup/internal/Operation;->type:I

    .line 31
    return-void
.end method
