.class public final synthetic Lcom/android/server/om/-$$Lambda$IdmapDaemon$PJzhiOHnyxvsKcpF_77d27eStZs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/om/-$$Lambda$IdmapDaemon$PJzhiOHnyxvsKcpF_77d27eStZs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/om/-$$Lambda$IdmapDaemon$PJzhiOHnyxvsKcpF_77d27eStZs;

    invoke-direct {v0}, Lcom/android/server/om/-$$Lambda$IdmapDaemon$PJzhiOHnyxvsKcpF_77d27eStZs;-><init>()V

    sput-object v0, Lcom/android/server/om/-$$Lambda$IdmapDaemon$PJzhiOHnyxvsKcpF_77d27eStZs;->INSTANCE:Lcom/android/server/om/-$$Lambda$IdmapDaemon$PJzhiOHnyxvsKcpF_77d27eStZs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->lambda$getIdmapService$0()V

    return-void
.end method
