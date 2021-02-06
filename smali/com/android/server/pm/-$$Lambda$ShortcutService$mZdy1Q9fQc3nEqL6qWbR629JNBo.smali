.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$mZdy1Q9fQc3nEqL6qWbR629JNBo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$mZdy1Q9fQc3nEqL6qWbR629JNBo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$mZdy1Q9fQc3nEqL6qWbR629JNBo;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$mZdy1Q9fQc3nEqL6qWbR629JNBo;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$mZdy1Q9fQc3nEqL6qWbR629JNBo;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$mZdy1Q9fQc3nEqL6qWbR629JNBo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/pm/ShortcutLauncher;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->lambda$getBackupPayload$15(Lcom/android/server/pm/ShortcutLauncher;)V

    return-void
.end method
