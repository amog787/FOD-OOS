.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yP9TbBmrgQ4lrgcxb-8oL1pBAs4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yP9TbBmrgQ4lrgcxb-8oL1pBAs4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yP9TbBmrgQ4lrgcxb-8oL1pBAs4;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yP9TbBmrgQ4lrgcxb-8oL1pBAs4;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yP9TbBmrgQ4lrgcxb-8oL1pBAs4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yP9TbBmrgQ4lrgcxb-8oL1pBAs4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Landroid/content/res/Configuration;

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$yP9TbBmrgQ4lrgcxb-8oL1pBAs4(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/res/Configuration;)V

    return-void
.end method
