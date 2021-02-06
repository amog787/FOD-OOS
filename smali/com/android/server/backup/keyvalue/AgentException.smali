.class Lcom/android/server/backup/keyvalue/AgentException;
.super Lcom/android/server/backup/keyvalue/BackupException;
.source "AgentException.java"


# instance fields
.field private final mTransitory:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0
    .param p1, "transitory"    # Z

    .line 51
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/BackupException;-><init>()V

    .line 52
    iput-boolean p1, p0, Lcom/android/server/backup/keyvalue/AgentException;->mTransitory:Z

    .line 53
    return-void
.end method

.method private constructor <init>(ZLjava/lang/Exception;)V
    .locals 0
    .param p1, "transitory"    # Z
    .param p2, "cause"    # Ljava/lang/Exception;

    .line 56
    invoke-direct {p0, p2}, Lcom/android/server/backup/keyvalue/BackupException;-><init>(Ljava/lang/Exception;)V

    .line 57
    iput-boolean p1, p0, Lcom/android/server/backup/keyvalue/AgentException;->mTransitory:Z

    .line 58
    return-void
.end method

.method static permanent()Lcom/android/server/backup/keyvalue/AgentException;
    .locals 2

    .line 42
    new-instance v0, Lcom/android/server/backup/keyvalue/AgentException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/backup/keyvalue/AgentException;-><init>(Z)V

    return-object v0
.end method

.method static permanent(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/AgentException;
    .locals 2
    .param p0, "cause"    # Ljava/lang/Exception;

    .line 46
    new-instance v0, Lcom/android/server/backup/keyvalue/AgentException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/backup/keyvalue/AgentException;-><init>(ZLjava/lang/Exception;)V

    return-object v0
.end method

.method static transitory()Lcom/android/server/backup/keyvalue/AgentException;
    .locals 2

    .line 34
    new-instance v0, Lcom/android/server/backup/keyvalue/AgentException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/backup/keyvalue/AgentException;-><init>(Z)V

    return-object v0
.end method

.method static transitory(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/AgentException;
    .locals 2
    .param p0, "cause"    # Ljava/lang/Exception;

    .line 38
    new-instance v0, Lcom/android/server/backup/keyvalue/AgentException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/server/backup/keyvalue/AgentException;-><init>(ZLjava/lang/Exception;)V

    return-object v0
.end method


# virtual methods
.method isTransitory()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/android/server/backup/keyvalue/AgentException;->mTransitory:Z

    return v0
.end method
