.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$N2PfGF62p6Y1TYGt9lvFtsW9LmQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$N2PfGF62p6Y1TYGt9lvFtsW9LmQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$N2PfGF62p6Y1TYGt9lvFtsW9LmQ;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$N2PfGF62p6Y1TYGt9lvFtsW9LmQ;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$N2PfGF62p6Y1TYGt9lvFtsW9LmQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$N2PfGF62p6Y1TYGt9lvFtsW9LmQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Landroid/os/IBinder;

    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityStack;->lambda$N2PfGF62p6Y1TYGt9lvFtsW9LmQ(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
