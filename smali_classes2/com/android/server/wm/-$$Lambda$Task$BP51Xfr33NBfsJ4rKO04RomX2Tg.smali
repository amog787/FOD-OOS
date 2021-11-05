.class public final synthetic Lcom/android/server/wm/-$$Lambda$Task$BP51Xfr33NBfsJ4rKO04RomX2Tg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiPredicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$BP51Xfr33NBfsJ4rKO04RomX2Tg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$BP51Xfr33NBfsJ4rKO04RomX2Tg;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$Task$BP51Xfr33NBfsJ4rKO04RomX2Tg;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$Task$BP51Xfr33NBfsJ4rKO04RomX2Tg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$BP51Xfr33NBfsJ4rKO04RomX2Tg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Landroid/content/ComponentName;

    invoke-static {p1, p2}, Lcom/android/server/wm/Task;->lambda$BP51Xfr33NBfsJ4rKO04RomX2Tg(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method
