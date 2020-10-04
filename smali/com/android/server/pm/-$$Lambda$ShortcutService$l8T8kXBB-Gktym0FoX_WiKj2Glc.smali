.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$l8T8kXBB-Gktym0FoX_WiKj2Glc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$l8T8kXBB-Gktym0FoX_WiKj2Glc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$l8T8kXBB-Gktym0FoX_WiKj2Glc;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$l8T8kXBB-Gktym0FoX_WiKj2Glc;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$l8T8kXBB-Gktym0FoX_WiKj2Glc;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$l8T8kXBB-Gktym0FoX_WiKj2Glc;

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

    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->lambda$getBackupPayload$9(Lcom/android/server/pm/ShortcutPackageItem;)V

    return-void
.end method
