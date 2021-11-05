.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$m-oFReMdH7_A0S8OFso2ScvMNqM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$m-oFReMdH7_A0S8OFso2ScvMNqM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$m-oFReMdH7_A0S8OFso2ScvMNqM;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$m-oFReMdH7_A0S8OFso2ScvMNqM;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$m-oFReMdH7_A0S8OFso2ScvMNqM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$m-oFReMdH7_A0S8OFso2ScvMNqM;

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

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1}, Lcom/android/server/wm/ActivityStack;->lambda$finishAllActivitiesImmediately$4(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
