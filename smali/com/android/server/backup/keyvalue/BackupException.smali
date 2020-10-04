.class Lcom/android/server/backup/keyvalue/BackupException;
.super Landroid/util/AndroidException;
.source "BackupException.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/util/AndroidException;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Exception;

    .line 31
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/Exception;)V

    .line 32
    return-void
.end method
