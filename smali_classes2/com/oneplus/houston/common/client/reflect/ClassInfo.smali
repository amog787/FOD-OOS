.class public Lcom/oneplus/houston/common/client/reflect/ClassInfo;
.super Ljava/lang/Object;
.source "ClassInfo.java"


# instance fields
.field fields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field methods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    .local p1, "mClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/oneplus/houston/common/client/reflect/ClassInfo;->mClass:Ljava/lang/Class;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/reflect/ClassInfo;->methods:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/reflect/ClassInfo;->fields:Ljava/util/HashMap;

    .line 29
    return-void
.end method


# virtual methods
.method public addCachedField(Ljava/lang/String;Ljava/lang/reflect/Field;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .line 44
    iget-object v0, p0, Lcom/oneplus/houston/common/client/reflect/ClassInfo;->fields:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public addCachedMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .line 36
    iget-object v0, p0, Lcom/oneplus/houston/common/client/reflect/ClassInfo;->methods:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public getCachedField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/oneplus/houston/common/client/reflect/ClassInfo;->fields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getCachedMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/oneplus/houston/common/client/reflect/ClassInfo;->methods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method
