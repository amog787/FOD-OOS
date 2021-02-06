.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$_rlNR7xXJi6hWEa-KZ7AV3g9QPc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$_rlNR7xXJi6hWEa-KZ7AV3g9QPc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$_rlNR7xXJi6hWEa-KZ7AV3g9QPc;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$_rlNR7xXJi6hWEa-KZ7AV3g9QPc;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$_rlNR7xXJi6hWEa-KZ7AV3g9QPc;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$_rlNR7xXJi6hWEa-KZ7AV3g9QPc;

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

    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->lambda$getBackupPayload$14(Lcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method
