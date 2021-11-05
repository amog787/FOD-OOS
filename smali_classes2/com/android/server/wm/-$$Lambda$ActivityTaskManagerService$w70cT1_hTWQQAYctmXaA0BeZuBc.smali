.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$w70cT1_hTWQQAYctmXaA0BeZuBc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$w70cT1_hTWQQAYctmXaA0BeZuBc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$w70cT1_hTWQQAYctmXaA0BeZuBc;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$w70cT1_hTWQQAYctmXaA0BeZuBc;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$w70cT1_hTWQQAYctmXaA0BeZuBc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$w70cT1_hTWQQAYctmXaA0BeZuBc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$w70cT1_hTWQQAYctmXaA0BeZuBc(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    return-void
.end method
