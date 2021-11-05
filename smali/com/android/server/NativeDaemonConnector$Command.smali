.class public Lcom/android/server/NativeDaemonConnector$Command;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Command"
.end annotation


# instance fields
.field private mArguments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCmd:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector$Command;->mArguments:Ljava/util/ArrayList;

    .line 577
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector$Command;->mCmd:Ljava/lang/String;

    .line 578
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 579
    .local v2, "arg":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 578
    .end local v2    # "arg":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 581
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NativeDaemonConnector$Command;

    .line 572
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$Command;->mCmd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NativeDaemonConnector$Command;

    .line 572
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$Command;->mArguments:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .line 584
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$Command;->mArguments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    return-object p0
.end method
