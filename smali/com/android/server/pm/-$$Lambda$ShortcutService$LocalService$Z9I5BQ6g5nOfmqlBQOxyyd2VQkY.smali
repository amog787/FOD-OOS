.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Z9I5BQ6g5nOfmqlBQOxyyd2VQkY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Z9I5BQ6g5nOfmqlBQOxyyd2VQkY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Z9I5BQ6g5nOfmqlBQOxyyd2VQkY;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Z9I5BQ6g5nOfmqlBQOxyyd2VQkY;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Z9I5BQ6g5nOfmqlBQOxyyd2VQkY;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Z9I5BQ6g5nOfmqlBQOxyyd2VQkY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService$LocalService;->lambda$pinShortcuts$3(Landroid/content/pm/ShortcutInfo;)Z

    move-result p1

    return p1
.end method
