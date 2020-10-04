.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$exGcjcSQADxpLL30XenIn9sDxlI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$exGcjcSQADxpLL30XenIn9sDxlI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$exGcjcSQADxpLL30XenIn9sDxlI;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$exGcjcSQADxpLL30XenIn9sDxlI;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$exGcjcSQADxpLL30XenIn9sDxlI;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$exGcjcSQADxpLL30XenIn9sDxlI;

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

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->lambda$getBackupPayload$11(Lcom/android/server/pm/ShortcutLauncher;)V

    return-void
.end method
