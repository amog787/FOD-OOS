.class public final synthetic Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$dhk0iBKAK3ywNSTqD4XUL3Oq0hM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$dhk0iBKAK3ywNSTqD4XUL3Oq0hM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$dhk0iBKAK3ywNSTqD4XUL3Oq0hM;

    invoke-direct {v0}, Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$dhk0iBKAK3ywNSTqD4XUL3Oq0hM;-><init>()V

    sput-object v0, Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$dhk0iBKAK3ywNSTqD4XUL3Oq0hM;->INSTANCE:Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$dhk0iBKAK3ywNSTqD4XUL3Oq0hM;

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

    check-cast p1, Lcom/android/server/protolog/common/IProtoLogGroup;

    invoke-static {p1}, Lcom/android/server/protolog/ProtoLogImpl;->lambda$getStatus$3(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result p1

    return p1
.end method
