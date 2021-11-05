.class Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textservices/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextServicesData"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSpellCheckerBindGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpellCheckerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpellCheckerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mUpdateCount:I

.field private final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUpdateCount:I

    .line 99
    iput p1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerList:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 103
    iput-object p2, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    .line 105
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 88
    invoke-direct {p0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->initializeTextServicesData()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 88
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 88
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 88
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 88
    iget v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 88
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 217
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 218
    .local v2, "spellCheckerIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  User #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    const-string v3, "  Spell Checkers:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Spell Checkers: mUpdateCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUpdateCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    iget-object v3, v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "    "

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/textservice/SpellCheckerInfo;

    .line 222
    .local v4, "info":Landroid/view/textservice/SpellCheckerInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Spell Checker #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v4, v1, v5}, Landroid/view/textservice/SpellCheckerInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 224
    nop

    .end local v4    # "info":Landroid/view/textservice/SpellCheckerInfo;
    add-int/lit8 v2, v2, 0x1

    .line 225
    goto :goto_0

    .line 227
    :cond_0
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    const-string v3, "  Spell Checker Bind Groups:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    iget-object v3, v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 231
    .local v3, "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 232
    .local v6, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 233
    .local v7, "grp":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "      mInternalConnection="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$100(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "      mSpellChecker="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$200(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/internal/textservice/ISpellCheckerService;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "      mUnbindCalled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$300(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "      mConnected="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$400(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    invoke-static {v7}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$500(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 239
    .local v8, "numPendingSessionRequests":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    const-string v11, " mUid="

    const-string v12, "        mScLocale="

    const-string v13, "        mTsListener="

    const-string v14, "        mScListener="

    if-ge v10, v8, :cond_1

    .line 240
    invoke-static {v7}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$500(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    .line 241
    .local v15, "req":Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v2

    .end local v2    # "spellCheckerIndex":I
    .local v16, "spellCheckerIndex":I
    const-string v2, "      Pending Request #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    .end local v15    # "req":Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    goto :goto_2

    .end local v16    # "spellCheckerIndex":I
    .restart local v2    # "spellCheckerIndex":I
    :cond_1
    move/from16 v16, v2

    .line 247
    .end local v2    # "spellCheckerIndex":I
    .end local v10    # "j":I
    .restart local v16    # "spellCheckerIndex":I
    invoke-static {v7}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$600(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 248
    .local v0, "numOnGoingSessionRequests":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-ge v2, v0, :cond_2

    .line 249
    invoke-static {v7}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$600(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    .line 250
    .local v10, "req":Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v0

    .end local v0    # "numOnGoingSessionRequests":I
    .local v17, "numOnGoingSessionRequests":I
    const-string v0, "      On going Request #"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v10, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v10, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v10, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v10, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mUid:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    .end local v10    # "req":Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v17

    goto :goto_3

    .end local v17    # "numOnGoingSessionRequests":I
    .restart local v0    # "numOnGoingSessionRequests":I
    :cond_2
    move/from16 v17, v0

    .line 256
    .end local v0    # "numOnGoingSessionRequests":I
    .end local v2    # "j":I
    .restart local v17    # "numOnGoingSessionRequests":I
    invoke-static {v7}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$700(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->getRegisteredCallbackCount()I

    move-result v0

    .line 257
    .local v0, "N":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_4
    if-ge v2, v0, :cond_3

    .line 258
    nop

    .line 259
    invoke-static {v7}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->access$700(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v10

    check-cast v10, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 260
    .local v10, "mScListener":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "      Listener #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "        mGroup="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    .end local v10    # "mScListener":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 264
    .end local v0    # "N":I
    .end local v2    # "j":I
    .end local v6    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .end local v7    # "grp":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v8    # "numPendingSessionRequests":I
    .end local v17    # "numOnGoingSessionRequests":I
    :cond_3
    move-object/from16 v0, p0

    move/from16 v2, v16

    goto/16 :goto_1

    .line 265
    .end local v16    # "spellCheckerIndex":I
    .local v2, "spellCheckerIndex":I
    :cond_4
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 123
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getSelectedSpellChecker()Ljava/lang/String;
    .locals 2

    .line 140
    const-string v0, "selected_spell_checker"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method private initializeTextServicesData()V
    .locals 12

    .line 173
    const-string v0, "Unable to load the spell checker "

    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 174
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 175
    iget v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUpdateCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUpdateCount:I

    .line 176
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 180
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.textservice.SpellCheckerService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    const/16 v4, 0x80

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 183
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 184
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 185
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 186
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 187
    .local v6, "si":Landroid/content/pm/ServiceInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .local v7, "compName":Landroid/content/ComponentName;
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v9, "android.permission.BIND_TEXT_SERVICE"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v10, "Skipping text service "

    if-nez v8, :cond_0

    .line 189
    invoke-static {}, Lcom/android/server/textservices/TextServicesManagerService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": it does not require the permission "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    goto :goto_1

    .line 196
    :cond_0
    :try_start_0
    new-instance v8, Landroid/view/textservice/SpellCheckerInfo;

    iget-object v9, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v5}, Landroid/view/textservice/SpellCheckerInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 197
    .local v8, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v9

    if-gtz v9, :cond_1

    .line 198
    invoke-static {}, Lcom/android/server/textservices/TextServicesManagerService;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": it does not contain subtypes."

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    goto :goto_1

    .line 202
    :cond_1
    iget-object v9, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v9, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    nop

    .end local v8    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    goto :goto_1

    .line 206
    :catch_0
    move-exception v8

    .line 207
    .local v8, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/textservices/TextServicesManagerService;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 204
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 205
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {}, Lcom/android/server/textservices/TextServicesManagerService;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 184
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "si":Landroid/content/pm/ServiceInfo;
    .end local v7    # "compName":Landroid/content/ComponentName;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 214
    .end local v4    # "i":I
    :cond_2
    return-void
.end method

.method private putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 119
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 120
    return-void
.end method

.method private putSelectedSpellChecker(Ljava/lang/String;)V
    .locals 1
    .param p1, "sciId"    # Ljava/lang/String;

    .line 131
    const-string v0, "selected_spell_checker"

    invoke-direct {p0, v0, p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method private putSelectedSpellCheckerSubtype(I)V
    .locals 1
    .param p1, "hashCode"    # I

    .line 135
    const-string v0, "selected_spell_checker_subtype"

    invoke-direct {p0, v0, p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->putInt(Ljava/lang/String;I)V

    .line 136
    return-void
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 109
    return-void
.end method


# virtual methods
.method public getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;
    .locals 2

    .line 153
    invoke-direct {p0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getSelectedSpellChecker()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "curSpellCheckerId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const/4 v1, 0x0

    return-object v1

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/SpellCheckerInfo;

    return-object v1
.end method

.method public getSelectedSpellCheckerSubtype(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    .line 144
    const-string v0, "selected_spell_checker_subtype"

    invoke-direct {p0, v0, p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isSpellCheckerEnabled()Z
    .locals 2

    .line 148
    const-string v0, "spell_checker_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 1
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;

    .line 161
    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->putSelectedSpellChecker(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_0
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->putSelectedSpellChecker(Ljava/lang/String;)V

    .line 166
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->putSelectedSpellCheckerSubtype(I)V

    .line 167
    return-void
.end method
