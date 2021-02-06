.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutUser$bsc89E_40a5X2amehalpqawQ5hY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutUser$bsc89E_40a5X2amehalpqawQ5hY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$bsc89E_40a5X2amehalpqawQ5hY;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$ShortcutUser$bsc89E_40a5X2amehalpqawQ5hY;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$bsc89E_40a5X2amehalpqawQ5hY;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutUser$bsc89E_40a5X2amehalpqawQ5hY;

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

    invoke-static {p1}, Lcom/android/server/pm/ShortcutUser;->lambda$attemptToRestoreIfNeededAndSave$2(Lcom/android/server/pm/ShortcutPackageItem;)V

    return-void
.end method
