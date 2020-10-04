.class public final synthetic Lcom/android/server/wm/-$$Lambda$RecentTasks$KPkDUQ9KJ-vmXlmV8HHAucQJJdQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$RecentTasks$KPkDUQ9KJ-vmXlmV8HHAucQJJdQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RecentTasks$KPkDUQ9KJ-vmXlmV8HHAucQJJdQ;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$RecentTasks$KPkDUQ9KJ-vmXlmV8HHAucQJJdQ;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$RecentTasks$KPkDUQ9KJ-vmXlmV8HHAucQJJdQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RecentTasks$KPkDUQ9KJ-vmXlmV8HHAucQJJdQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/wm/TaskRecord;

    check-cast p2, Lcom/android/server/wm/TaskRecord;

    invoke-static {p1, p2}, Lcom/android/server/wm/RecentTasks;->lambda$static$0(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskRecord;)I

    move-result p1

    return p1
.end method
