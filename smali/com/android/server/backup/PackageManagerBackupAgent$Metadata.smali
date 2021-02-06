.class public Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
.super Ljava/lang/Object;
.source "PackageManagerBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/PackageManagerBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Metadata"
.end annotation


# instance fields
.field public sigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

.field public versionCode:J


# direct methods
.method constructor <init>(Lcom/android/server/backup/PackageManagerBackupAgent;JLjava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/PackageManagerBackupAgent;
    .param p2, "version"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    .line 124
    .local p4, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-wide p2, p0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    .line 126
    iput-object p4, p0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->sigHashes:Ljava/util/ArrayList;

    .line 127
    return-void
.end method
