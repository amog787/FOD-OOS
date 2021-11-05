.class public final synthetic Lcom/android/server/backup/-$$Lambda$TransportManager$Qbutmzd17ICwZdy0UzRrO-3_VK0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/backup/-$$Lambda$TransportManager$Qbutmzd17ICwZdy0UzRrO-3_VK0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/backup/-$$Lambda$TransportManager$Qbutmzd17ICwZdy0UzRrO-3_VK0;

    invoke-direct {v0}, Lcom/android/server/backup/-$$Lambda$TransportManager$Qbutmzd17ICwZdy0UzRrO-3_VK0;-><init>()V

    sput-object v0, Lcom/android/server/backup/-$$Lambda$TransportManager$Qbutmzd17ICwZdy0UzRrO-3_VK0;->INSTANCE:Lcom/android/server/backup/-$$Lambda$TransportManager$Qbutmzd17ICwZdy0UzRrO-3_VK0;

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

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/android/server/backup/TransportManager;->lambda$registerTransports$2(Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method
